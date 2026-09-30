#Requires -Version 7.0
<#
.SYNOPSIS
    Manages OIB policy tracking GUIDs (OIBIDs) and per-platform PolicyManifest.json files.

.DESCRIPTION
    Validate mode  (default): Read-only check. Exits with code 1 if any inconsistencies are found.
    WhatIf mode:              Dry-run of Update. Shows what would change without writing any files.
    Update mode:              Stamps new OIBIDs into policy JSON description fields, rotates GUIDs
                              when a policy version is bumped, and keeps PolicyManifest.json in sync.

    Policy identity is determined by stripping the trailing version suffix (e.g. " - v3.8") from
    the filename. If a manifest entry exists under the same stable identity but a different version
    name, the policy is treated as UPDATED: a new GUID is generated and the previous GUID/version
    is prepended to the previousVersions array.

.PARAMETER Mode
    'Validate' (default), 'WhatIf', or 'Update'.

.PARAMETER Platform
    'Android', 'BYOD', 'iOS', 'MacOS', 'Windows', 'Windows365', or 'All' (default).

.PARAMETER OibVersion
    OIB version string for the current release, e.g. '4.0'.
    In Update mode: updates the manifest header oibVersion and is used as addedIn for new policies.
    If omitted, the existing manifest oibVersion is preserved.

.EXAMPLE
    # Validate all platforms (used in CI)
    ./Scripts/Update-OIBManifest.ps1

.EXAMPLE
    # Stamp OIBIDs for a new Windows release
    ./Scripts/Update-OIBManifest.ps1 -Mode Update -Platform Windows -OibVersion 4.0
#>
[CmdletBinding()]
param(
    [ValidateSet('Validate', 'WhatIf', 'Update')]
    [string]$Mode = 'Validate',

    [ValidateSet('Android', 'BYOD', 'iOS', 'MacOS', 'Windows', 'Windows365', 'All')]
    [string]$Platform = 'All',

    [string]$OibVersion
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------
$RepoRoot       = Split-Path -Parent $PSScriptRoot
$OibIdRegex     = [regex]'OIBID:([0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12})'
$VersionSuffix  = [regex]'\s+-\s+v\d+\.\d+(\.\d+)?$'

$KnownPolicyDirs = @(
    'SettingsCatalog'
    'CompliancePolicies'
    'DeviceConfiguration'
    'UpdatePolicies'
    'DriverUpdateProfiles'
    'AppProtection'
)

$PlatformFolderMap = [ordered]@{
    Android    = 'ANDROID'
    BYOD       = 'BYOD'
    iOS        = 'IOS'
    MacOS      = 'MACOS'
    Windows    = 'WINDOWS'
    Windows365 = 'WINDOWS365'
}

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------
function Get-StableIdentity ([string]$PolicyName) {
    return $VersionSuffix.Replace($PolicyName, '')
}

function Get-OibIdFromDescription ([string]$Description) {
    $m = $OibIdRegex.Match($Description)
    if ($m.Success) { return $m.Groups[1].Value }
    return $null
}

function Set-OibIdInDescription ([string]$Description, [string]$OibId) {
    # Remove all existing OIBID tokens (with any preceding newline)
    $cleaned = [regex]::Replace($Description, '\n?OIBID:[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}', '')
    $cleaned = $cleaned.TrimEnd()
    if ([string]::IsNullOrWhiteSpace($cleaned)) { return "OIBID:$OibId" }
    return "$cleaned`nOIBID:$OibId"
}

function Get-ScopeFromName ([string]$PolicyName) {
    if ($PolicyName -match ' - D - ') { return 'Device' }
    if ($PolicyName -match ' - U - ') { return 'User' }
    return 'Device'
}

function Get-PolicyTypeFromName ([string]$PolicyName, [string]$FolderType) {
    # ES-prefixed policies live in SettingsCatalog on disk but are logically EndpointSecurity
    if ($PolicyName -match ' - OIB - ES - ') { return 'EndpointSecurity' }
    return $FolderType
}

function Get-PlatformFromName ([string]$PolicyName, [string]$FolderPlatform) {
    # BYOD policies are prefixed with their target OS (e.g. "Android - OIB -", "iOS - OIB -")
    if ($PolicyName -match '^(Android|iOS|MacOS|Windows)\s+-\s+OIB\s+-') { return $Matches[1] }
    return $FolderPlatform
}

function Write-JsonFile ([string]$Path, [object]$Object) {
    $bytes  = [System.IO.File]::ReadAllBytes($Path)
    $hasBom = $bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF
    $enc    = [System.Text.UTF8Encoding]::new($hasBom)
    [System.IO.File]::WriteAllText($Path, ($Object | ConvertTo-Json -Depth 50), $enc)
}

function Get-PlatformPolicies ([string]$PlatformFolder, [string]$PlatformName) {
    $base = Join-Path $RepoRoot $PlatformFolder 'IntuneManagement'
    if (-not (Test-Path $base)) { return @() }

    $results = foreach ($dir in $KnownPolicyDirs) {
        $full = Join-Path $base $dir
        if (Test-Path $full) {
            Get-ChildItem $full -Filter '*.json' | ForEach-Object {
                [PSCustomObject]@{
                    File       = $_
                    PolicyName = $_.BaseName
                    PolicyType = $dir
                    Platform   = Get-PlatformFromName $_.BaseName $PlatformName
                }
            }
        }
    }
    return @($results)
}

# ---------------------------------------------------------------------------
# Validate
# ---------------------------------------------------------------------------
function Invoke-Validate ([string]$PlatformFolder, [string]$PlatformName) {
    $manifestPath = Join-Path $RepoRoot $PlatformFolder 'PolicyManifest.json'
    $issues       = [System.Collections.Generic.List[string]]::new()

    if (-not (Test-Path $manifestPath)) {
        throw "No PolicyManifest.json found at $manifestPath"
    }

    $manifest = Get-Content $manifestPath -Raw | ConvertFrom-Json
    $policies = Get-PlatformPolicies $PlatformFolder $PlatformName

    # Duplicate OIBIDs within the manifest
    $manifest.policies | Group-Object oibId | Where-Object { $_.Count -gt 1 } | ForEach-Object {
        $issues.Add("Duplicate oibId in manifest: $($_.Name)")
    }

    $byName       = @{}
    foreach ($e in $manifest.policies) { $byName[$e.name] = $e }

    $seenFileIds  = @{}
    $matchedNames = @{}

    foreach ($p in $policies) {
        $j = Get-Content $p.File.FullName -Raw | ConvertFrom-Json

        if (-not $j.PSObject.Properties['description']) {
            $issues.Add("No description field: $($p.PolicyName)")
            continue
        }

        $oibMatches = $OibIdRegex.Matches($j.description)

        if ($oibMatches.Count -eq 0) {
            $issues.Add("Missing OIBID: $($p.PolicyName)")
            continue
        }
        if ($oibMatches.Count -gt 1) {
            $issues.Add("Multiple OIBIDs ($($oibMatches.Count)): $($p.PolicyName)")
            continue
        }

        $fileId = $oibMatches[0].Groups[1].Value

        if ($seenFileIds.ContainsKey($fileId)) {
            $issues.Add("Duplicate OIBID '$fileId': $($p.PolicyName) and $($seenFileIds[$fileId])")
        } else {
            $seenFileIds[$fileId] = $p.PolicyName
        }

        if (-not $byName.ContainsKey($p.PolicyName)) {
            $issues.Add("File not in manifest: $($p.PolicyName)")
            continue
        }

        $matchedNames[$p.PolicyName] = $true
        $entry = $byName[$p.PolicyName]

        if ($fileId -ne $entry.oibId) {
            $issues.Add("OIBID mismatch '$($p.PolicyName)': file=$fileId manifest=$($entry.oibId)")
        }
    }

    # Orphaned manifest entries (no matching file); deprecated tombstones are intentionally file-less
    foreach ($e in $manifest.policies) {
        if (-not $matchedNames.ContainsKey($e.name) -and $e.status -ne 'deprecated') {
            $issues.Add("Manifest entry has no matching file: $($e.name)")
        }
    }

    return $issues
}

# ---------------------------------------------------------------------------
# Update
# ---------------------------------------------------------------------------
function Invoke-Update ([string]$PlatformFolder, [string]$PlatformName, [string]$OibVersionOverride, [switch]$DryRun) {
    $manifestPath = Join-Path $RepoRoot $PlatformFolder 'PolicyManifest.json'
    $changes      = [System.Collections.Generic.List[string]]::new()

    if (Test-Path $manifestPath) {
        $manifest = Get-Content $manifestPath -Raw | ConvertFrom-Json
    } else {
        if (-not $OibVersionOverride) {
            throw "No PolicyManifest.json for $PlatformName and -OibVersion not specified. Cannot create manifest."
        }
        $manifest = [PSCustomObject]@{
            manifestVersion = '1.0'
            oibVersion      = $OibVersionOverride
            platform        = $PlatformName
            generatedDate   = (Get-Date -Format 'yyyy-MM-dd')
            policies        = @()
        }
    }

    $prevOibVersion    = $manifest.oibVersion
    $currentOibVersion = if ($OibVersionOverride) { $OibVersionOverride } else { $prevOibVersion }

    if ($OibVersionOverride) {
        $manifest.oibVersion  = $OibVersionOverride
        $manifest.generatedDate = Get-Date -Format 'yyyy-MM-dd'
    }

    # Build mutable list and stable-identity lookup (manifest is authoritative on conflicts)
    $policyList = [System.Collections.Generic.List[object]]($manifest.policies)
    $byStableId = @{}
    foreach ($e in $policyList) {
        $sid = Get-StableIdentity $e.name
        if (-not $byStableId.ContainsKey($sid)) { $byStableId[$sid] = $e }
    }

    foreach ($p in Get-PlatformPolicies $PlatformFolder $PlatformName) {
        $j = Get-Content $p.File.FullName -Raw | ConvertFrom-Json

        if (-not $j.PSObject.Properties['description']) {
            Write-Warning "No description field, skipping: $($p.PolicyName)"
            continue
        }

        $sid   = Get-StableIdentity $p.PolicyName
        $entry = $byStableId[$sid]

        if (-not $entry) {
            # --- NEW policy ---
            $guid          = (New-Guid).ToString().ToUpper()
            $j.description = Set-OibIdInDescription $j.description $guid
            if (-not $DryRun) { Write-JsonFile $p.File.FullName $j }

            $newEntry = [PSCustomObject]@{
                oibId               = $guid
                name                = $p.PolicyName
                platform            = $p.Platform
                policyType          = Get-PolicyTypeFromName $p.PolicyName $p.PolicyType
                scope               = Get-ScopeFromName $p.PolicyName
                addedIn             = $currentOibVersion
                status              = 'active'
                supersededBy        = @()
                skuRequirements     = ''
                licenseRequirements = ''
                tags                = @()
                previousVersions    = @()
            }
            $policyList.Add($newEntry)
            $byStableId[$sid] = $newEntry
            $changes.Add("NEW      $($p.PolicyName) [$guid]")

        } elseif ($entry.name -ne $p.PolicyName) {
            # --- UPDATED policy (version bump detected) ---
            $oldVersion = if ($entry.name -match '\s+-\s+v(\d+\.\d+(?:\.\d+)?)$') { $Matches[1] } else { $prevOibVersion }
            $prevRecord = [PSCustomObject]@{ oibVersion = $oldVersion; oibId = $entry.oibId }
            $newPrev    = @($prevRecord) + @($entry.previousVersions | Where-Object { $_ })

            $guid          = (New-Guid).ToString().ToUpper()
            $j.description = Set-OibIdInDescription $j.description $guid
            if (-not $DryRun) { Write-JsonFile $p.File.FullName $j }

            $entry.oibId            = $guid
            $entry.name             = $p.PolicyName
            $entry.previousVersions = $newPrev
            $changes.Add("UPDATED  $($p.PolicyName) [$guid] (was $($prevRecord.oibId) @ v$oldVersion)")

        } else {
            # --- UNCHANGED --- ensure file OIBID matches manifest (manifest wins)
            $fileId = Get-OibIdFromDescription $j.description
            if ($fileId -ne $entry.oibId) {
                $j.description = Set-OibIdInDescription $j.description $entry.oibId
                if (-not $DryRun) { Write-JsonFile $p.File.FullName $j }
                $changes.Add("FIXED    $($p.PolicyName) [restored $($entry.oibId)]")
            }
        }
    }

    $manifest.policies = $policyList.ToArray()
    if (-not $DryRun) {
        $enc = [System.Text.UTF8Encoding]::new($false)
        [System.IO.File]::WriteAllText($manifestPath, ($manifest | ConvertTo-Json -Depth 10), $enc)
    }

    return $changes
}

# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
$platforms  = if ($Platform -eq 'All') { [string[]]$PlatformFolderMap.Keys } else { @($Platform) }
$allIssues  = [System.Collections.Generic.List[string]]::new()
$allChanges = [System.Collections.Generic.List[string]]::new()

foreach ($plat in $platforms) {
    $folder = $PlatformFolderMap[$plat]
    if (-not (Test-Path (Join-Path $RepoRoot $folder 'IntuneManagement'))) {
        Write-Verbose "[$plat] No IntuneManagement directory found, skipping."
        continue
    }

    Write-Host "[$plat] Running in $Mode mode..."

    if ($Mode -eq 'Validate') {
        $manifestPath = Join-Path $RepoRoot $folder 'PolicyManifest.json'
        if (-not (Test-Path $manifestPath)) {
            Write-Host "[$plat] Skipped - no PolicyManifest.json."
        } else {
            $issues = @(Invoke-Validate $folder $plat)
            if ($issues.Count -gt 0) {
                $issues | ForEach-Object { $allIssues.Add("[$plat] $_") }
            } else {
                Write-Host "[$plat] OK - all OIBIDs consistent."
            }
        }
    } else {
        $isDryRun = ($Mode -eq 'WhatIf')
        $changes = @(Invoke-Update $folder $plat $OibVersion -DryRun:$isDryRun)
        if ($changes.Count -gt 0) {
            $changes | ForEach-Object { $allChanges.Add("[$plat] $_"); Write-Host "  $_" }
        } else {
            Write-Host "[$plat] No changes required."
        }
    }
}

if ($Mode -eq 'Validate') {
    if ($allIssues.Count -eq 0) {
        Write-Host "`nValidation passed. All OIBIDs are consistent."
        exit 0
    } else {
        Write-Host "`nValidation FAILED - $($allIssues.Count) issue(s) found:" -ForegroundColor Red
        $allIssues | ForEach-Object { Write-Host "  $_" -ForegroundColor Red }
        exit 1
    }
} elseif ($Mode -eq 'WhatIf') {
    if ($allChanges.Count -eq 0) {
        Write-Host "`nNo changes would be made."
    } else {
        Write-Host "`n$($allChanges.Count) change(s) would be made (no files written)." -ForegroundColor Cyan
    }
} else {
    Write-Host "`n$($allChanges.Count) total change(s) made."
}
