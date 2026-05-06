[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [string]$Prefix = "AAA",

    [Parameter(Mandatory = $false)]
    [ValidateRange(4, 12)]
    [int]$SerialTailLength = 12
)

function Get-SerialNumber {
    try {
        $bios = Get-CimInstance -ClassName Win32_BIOS -ErrorAction Stop
        $sn = ($bios.SerialNumber).Trim()
        if ([string]::IsNullOrWhiteSpace($sn)) { return $null }
        return $sn
    }
    catch {
        return $null
    }
}

function Format-ComputerName {
    param(
        [Parameter(Mandatory)]
        [string]$Name
    )

    $n = $Name.ToUpperInvariant()
    $n = ($n -replace '[^A-Z0-9-]', '')
    $n = $n.Trim('-')

    if ($n.Length -gt 15) {
        $n = $n.Substring(0, 15).Trim('-')
    }

    if ($n -match '^\d+$') {
        $n = "PC-$n"
        if ($n.Length -gt 15) {
            $n = $n.Substring(0, 15).Trim('-')
        }
    }

    if ([string]::IsNullOrWhiteSpace($n)) {
        throw "Generated computer name is empty after sanitising."
    }

    return $n
}

function Get-DesiredComputerName {
    param(
        [string]$Prefix,
        [int]$SerialTailLength
    )

    $serial = Get-SerialNumber
    if ([string]::IsNullOrWhiteSpace($serial)) {
        throw "Unable to read device serial number."
    }

    $serialClean = ($serial -replace '\s', '').ToUpperInvariant()
    if ($serialClean.Length -lt $SerialTailLength) {
        $tail = $serialClean
    }
    else {
        $tail = $serialClean.Substring($serialClean.Length - $SerialTailLength, $SerialTailLength)
    }

    $rawName = "$Prefix-$tail"

    $maxLen = 15
    if ($rawName.Length -gt $maxLen) {
        $allowedTailLen = [Math]::Max(4, $maxLen - ($Prefix.Length + 1))
        if ($tail.Length -gt $allowedTailLen) {
            $tail = $tail.Substring($tail.Length - $allowedTailLen, $allowedTailLen)
        }
        $rawName = "$Prefix-$tail"
    }

    return (Format-ComputerName -Name $rawName)
}

try {
    $desired = Get-DesiredComputerName -Prefix $Prefix -SerialTailLength $SerialTailLength
    $current = $env:COMPUTERNAME

    if ($current -eq $desired) {
        Write-Output "Detected: device name matches desired name ($desired)."
        exit 0
    }
    else {
        Write-Output "Not detected: current name ($current) does not match desired name ($desired)."
        exit 1
    }
}
catch {
    Write-Output "Not detected: error determining desired name. $($_.Exception.Message)"
    exit 1
}