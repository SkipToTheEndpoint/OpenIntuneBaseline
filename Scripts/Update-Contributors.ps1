#Requires -Version 7.0
<#
.SYNOPSIS
    Maintains the OIB contributors list (.all-contributorsrc) and regenerates CONTRIBUTORS.md.

.DESCRIPTION
    Builds the contributor list from two sources:
      - Code contributors: the GitHub repository contributors API (commit authors).
        - Issue contributors: authors of any issue closed as "completed", excluding issues labelled
          invalid or duplicate.

      Contribution types use the All Contributors emoji key (https://allcontributors.org/en/reference/emoji-key/)
      and are stored in .all-contributorsrc, so the file stays compatible with the All Contributors
      bot/CLI. Issue types are derived from labels first, then the issue title prefix:
        documentation label                                   -> doc
        bug label                                             -> bug
        enhancement/info/question label, or [Feature]/[Suggestion]/[Info]/[Question] title -> ideas
        anything else                                         -> bug

    Contributions are only ever added, never removed, so types added manually to
    .all-contributorsrc (e.g. "design", "content", "review") are preserved. Every run performs a full,
      idempotent scan of contributors and closed issues.

    CONTRIBUTORS.md is regenerated between the <!-- contributors:start --> and
    <!-- contributors:end --> markers; everything outside the markers is left untouched.

.PARAMETER Mode
    'Update' (default) writes .all-contributorsrc and CONTRIBUTORS.md.
    'WhatIf' reports the contributions that would be added without writing any files.

.PARAMETER Repository
    owner/repo to query. Defaults to $env:GITHUB_REPOSITORY, then SkipToTheEndpoint/OpenIntuneBaseline.

.EXAMPLE
    # Used by the Update Contributors workflow (token supplied via GITHUB_TOKEN)
    ./Scripts/Update-Contributors.ps1

.EXAMPLE
    # Preview locally
    ./Scripts/Update-Contributors.ps1 -Mode WhatIf
#>
[CmdletBinding()]
param(
    [ValidateSet('WhatIf', 'Update')]
    [string]$Mode = 'Update',

    [string]$Repository = $(if ($env:GITHUB_REPOSITORY) { $env:GITHUB_REPOSITORY } else { 'SkipToTheEndpoint/OpenIntuneBaseline' })
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------
$RepoRoot         = Split-Path -Parent $PSScriptRoot
$ConfigPath       = Join-Path $RepoRoot '.all-contributorsrc'
$ContributorsPath = Join-Path $RepoRoot 'CONTRIBUTORS.md'
$StartMarker      = '<!-- contributors:start -->'
$EndMarker        = '<!-- contributors:end -->'
$LegacyStart      = '<!-- readme: contributors -start -->'
$LegacyEnd        = '<!-- readme: contributors -end -->'
$ApiBase          = "https://api.github.com/repos/$Repository"
$ExcludedIssueLabels = @('invalid', 'duplicate')
# Automation accounts that may not report type 'Bot'; 'ghost' is GitHub's placeholder for deleted accounts
$ExcludedLogins = @('ghost', 'Copilot', 'copilot-swe-agent', 'copilot-pull-request-reviewer', 'dependabot', 'github-actions', 'renovate', 'web-flow')

# All Contributors emoji key (https://allcontributors.org/docs/en/emoji-key)
$EmojiKey = [ordered]@{
    code           = @{ Emoji = '💻'; Title = 'Code' }
    bug            = @{ Emoji = '🐛'; Title = 'Bug reports' }
    ideas          = @{ Emoji = '🤔'; Title = 'Ideas, Planning, & Feedback' }
    doc            = @{ Emoji = '📖'; Title = 'Documentation' }
    review         = @{ Emoji = '👀'; Title = 'Reviewed Pull Requests' }
    test           = @{ Emoji = '⚠️'; Title = 'Tests' }
    question       = @{ Emoji = '💬'; Title = 'Answering Questions' }
    research       = @{ Emoji = '🔬'; Title = 'Research' }
    content        = @{ Emoji = '🖋'; Title = 'Content' }
    design         = @{ Emoji = '🎨'; Title = 'Design' }
    example        = @{ Emoji = '💡'; Title = 'Examples' }
    infra          = @{ Emoji = '🚇'; Title = 'Infrastructure' }
    maintenance    = @{ Emoji = '🚧'; Title = 'Maintenance' }
    mentoring      = @{ Emoji = '🧑‍🏫'; Title = 'Mentoring' }
    projectManagement = @{ Emoji = '📆'; Title = 'Project Management' }
    promotion      = @{ Emoji = '📣'; Title = 'Promotion' }
    security       = @{ Emoji = '🛡️'; Title = 'Security' }
    tool           = @{ Emoji = '🔧'; Title = 'Tools' }
    translation    = @{ Emoji = '🌍'; Title = 'Translation' }
    tutorial       = @{ Emoji = '✅'; Title = 'Tutorials' }
    talk           = @{ Emoji = '📢'; Title = 'Talks' }
}

# ---------------------------------------------------------------------------
# GitHub API helpers
# ---------------------------------------------------------------------------
$Headers = @{
    Accept                 = 'application/vnd.github+json'
    'X-GitHub-Api-Version' = '2022-11-28'
}
$Token = if ($env:GITHUB_TOKEN) { $env:GITHUB_TOKEN } elseif ($env:GH_TOKEN) { $env:GH_TOKEN } else { $null }
if ($Token) { $Headers.Authorization = "Bearer $Token" }
else { Write-Warning 'No GITHUB_TOKEN/GH_TOKEN set; using unauthenticated API (60 requests/hour).' }

function Invoke-GitHubPaged {
    param([Parameter(Mandatory)][string]$Uri)
    # -FollowRelLink returns one array per page; flatten into a single list
    $pages = Invoke-RestMethod -Uri $Uri -Headers $Headers -FollowRelLink
    foreach ($page in $pages) { foreach ($item in $page) { $item } }
}

function Test-IsBot {
    param($User)
    $login = [string]$User.login
    $type  = if ($User -is [System.Collections.IDictionary]) { $User['type'] } elseif ($User.PSObject.Properties['type']) { $User.type } else { $null }
    return ($type -eq 'Bot') -or ($login -like '*`[bot`]') -or ($login -in $ExcludedLogins)
}

function Get-IssueContributionType {
    param($Issue)
    $labels = @($Issue.labels | ForEach-Object { $_.name.ToLowerInvariant() })
    if ($labels -contains 'documentation') { return 'doc' }
    if ($labels -contains 'bug')           { return 'bug' }
    if ($labels | Where-Object { $_ -in 'enhancement', 'info', 'question' }) { return 'ideas' }
    if ($Issue.title -match '^\s*\[(Feature|Suggestion|Enhancement|Idea|Info|Question)\]') { return 'ideas' }
    return 'bug'
}

# ---------------------------------------------------------------------------
# Load existing configuration
# ---------------------------------------------------------------------------
$owner, $repoName = $Repository.Split('/')
if (Test-Path $ConfigPath) {
    $config = Get-Content $ConfigPath -Raw | ConvertFrom-Json -AsHashtable
}
else {
    $config = [ordered]@{
        projectName         = $repoName
        projectOwner        = $owner
        files               = @('CONTRIBUTORS.md')
        imageSize           = 100
        contributorsPerLine = 7
        commit              = $false
        contributors        = @()
    }
}

$contributors = [ordered]@{}
foreach ($c in $config.contributors) {
    if (Test-IsBot $c) { continue }
    $contributors[$c.login.ToLowerInvariant()] = $c
}
$added = [System.Collections.Generic.List[string]]::new()

function Add-Contribution {
    param([Parameter(Mandatory)]$User, [Parameter(Mandatory)][string]$Type, [string]$Source)
    if (Test-IsBot $User) { return }
    $key = $User.login.ToLowerInvariant()
    if (-not $contributors.Contains($key)) {
        $contributors[$key] = [ordered]@{
            login         = $User.login
            name          = $null
            avatar_url    = "https://avatars.githubusercontent.com/u/$($User.id)?v=4"
            profile       = "https://github.com/$($User.login)"
            contributions = @()
        }
    }
    $entry = $contributors[$key]
    if ($entry.contributions -notcontains $Type) {
        $entry.contributions = @($entry.contributions) + $Type
        $added.Add("$($User.login): +$Type$(if ($Source) { " ($Source)" })")
    }
}

# ---------------------------------------------------------------------------
# Code contributors
# ---------------------------------------------------------------------------
$codeOrder = [System.Collections.Generic.List[string]]::new()
foreach ($user in Invoke-GitHubPaged "$ApiBase/contributors?per_page=100") {
    if (Test-IsBot $user) { continue }
    Add-Contribution -User $user -Type 'code' -Source 'commits'
    $codeOrder.Add($user.login.ToLowerInvariant())
}

# ---------------------------------------------------------------------------
# Issue contributors (any issue closed as completed)
# ---------------------------------------------------------------------------
foreach ($issue in Invoke-GitHubPaged "$ApiBase/issues?state=closed&per_page=100") {
    if ($issue.PSObject.Properties['pull_request']) { continue }
    if ($issue.state_reason -ne 'completed') { continue }
    $labels = @($issue.labels | ForEach-Object { $_.name.ToLowerInvariant() })
    if ($labels | Where-Object { $_ -in $ExcludedIssueLabels }) { continue }
    Add-Contribution -User $issue.user -Type (Get-IssueContributionType $issue) -Source "#$($issue.number)"
}

# ---------------------------------------------------------------------------
# Resolve display names for new contributors
# ---------------------------------------------------------------------------
# Unresolved names stay empty (rendered as the login) so a later authenticated run can fill them in
foreach ($entry in $contributors.Values) {
    if ($entry.name) { continue }
    try {
        $userInfo = Invoke-RestMethod -Uri "https://api.github.com/users/$($entry.login)" -Headers $Headers
        $entry.name = if ($userInfo.name) { $userInfo.name } else { $entry.login }
    }
    catch {
        Write-Warning "Stopped resolving display names ($($entry.login)): $($_.Exception.Message)"
        break
    }
}

# ---------------------------------------------------------------------------
# Report / write
# ---------------------------------------------------------------------------
if ($added.Count) {
    Write-Host "Contributions added ($($added.Count)):"
    $added | ForEach-Object { Write-Host "  $_" }
}
else {
    Write-Host 'No new contributions found.'
}

# Code contributors in commit-count order, then everyone else alphabetically
$ordered = @(
    $codeOrder | Where-Object { $contributors.Contains($_) } | ForEach-Object { $contributors[$_] }
    $contributors.Keys | Where-Object { $codeOrder -notcontains $_ } | Sort-Object | ForEach-Object { $contributors[$_] }
)
$config.contributors = $ordered

function ConvertTo-ContributorTable {
    param([object[]]$People)
    if (-not $People) { return '_None yet._' }
    $perLine = [int]$config.contributorsPerLine
    $size    = [int]$config.imageSize
    $width   = [math]::Round(100 / $perLine, 2)
    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine('<table>')
    [void]$sb.AppendLine('  <tbody>')
    for ($i = 0; $i -lt $People.Count; $i += $perLine) {
        [void]$sb.AppendLine('    <tr>')
        foreach ($p in $People[$i..([math]::Min($i + $perLine, $People.Count) - 1)]) {
            $name   = [System.Net.WebUtility]::HtmlEncode($(if ($p.name) { $p.name } else { $p.login }))
            $badges = foreach ($type in $p.contributions) {
                $key = $EmojiKey[$type]
                if (-not $key) { continue }
                $link = switch ($type) {
                    'code'  { "https://github.com/$Repository/commits?author=$($p.login)" }
                    { $_ -in 'bug', 'ideas', 'doc' } { "https://github.com/$Repository/issues?q=is%3Aissue+author%3A$($p.login)" }
                    default { $null }
                }
                if ($link) { "<a href=`"$link`" title=`"$($key.Title)`">$($key.Emoji)</a>" }
                else { "<span title=`"$($key.Title)`">$($key.Emoji)</span>" }
            }
            [void]$sb.AppendLine("      <td align=`"center`" valign=`"top`" width=`"$width%`"><a href=`"$($p.profile)`"><img src=`"$($p.avatar_url)&s=$size`" width=`"$($size)px;`" alt=`"$name`"/><br /><sub><b>$name</b></sub></a><br />$($badges -join ' ')</td>")
        }
        [void]$sb.AppendLine('    </tr>')
    }
    [void]$sb.AppendLine('  </tbody>')
    [void]$sb.Append('</table>')
    return $sb.ToString()
}

$codePeople  = @($ordered | Where-Object { $_.contributions -contains 'code' })
$issuePeople = @($ordered | Where-Object { $_.contributions -notcontains 'code' })
$usedTypes   = @($ordered | ForEach-Object { $_.contributions } | Select-Object -Unique)
$legend      = ($EmojiKey.Keys | Where-Object { $_ -in $usedTypes } | ForEach-Object { "$($EmojiKey[$_].Emoji) $($EmojiKey[$_].Title)" }) -join ' · '

$generated = @"
$StartMarker
<!-- This section is generated by Scripts/Update-Contributors.ps1. Edit .all-contributorsrc instead. -->
### Code Contributors
$(ConvertTo-ContributorTable $codePeople)

### Issue Contributors
Thank you to everyone whose bug reports, ideas and feedback have helped improve the OIB.

$(ConvertTo-ContributorTable $issuePeople)

<sub>Key: $legend. Based on the [All Contributors](https://allcontributors.org/docs/en/emoji-key) specification.</sub>
$EndMarker
"@ -replace "`r`n", "`n"

$md = (Get-Content $ContributorsPath -Raw) -replace "`r`n", "`n"
$blockPattern = [regex]"(?s)($([regex]::Escape($StartMarker))|$([regex]::Escape($LegacyStart))).*?($([regex]::Escape($EndMarker))|$([regex]::Escape($LegacyEnd)))"
if (-not $blockPattern.IsMatch($md)) { throw "Contributor markers not found in $ContributorsPath." }
$newMd = $blockPattern.Replace($md, { param($m) $generated }, 1)

if ($Mode -eq 'WhatIf') {
    Write-Host "WhatIf: $($codePeople.Count) code contributors, $($issuePeople.Count) issue contributors. No files written."
    return
}

$utf8NoBom = [System.Text.UTF8Encoding]::new($false)
[System.IO.File]::WriteAllText($ConfigPath, (($config | ConvertTo-Json -Depth 5) -replace "`r`n", "`n") + "`n", $utf8NoBom)
[System.IO.File]::WriteAllText($ContributorsPath, $newMd, $utf8NoBom)
Write-Host "Updated $ConfigPath and $ContributorsPath ($($codePeople.Count) code, $($issuePeople.Count) issue contributors)."
