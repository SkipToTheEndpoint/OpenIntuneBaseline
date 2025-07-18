<#
    .SYNOPSIS
        Enables the location setting and turns on the "Set the timezone automatically" switch in Time & Language > Date & Time.
   
    .NOTES
        Author: James Robinson | SkipToTheEndpoint | https://skiptotheendpoint.co.uk
        Version: v1.1
        Release Date: 2024-08-31

        Intune Info:
        Script type - Platform Script
        Assign to - Devices
        Script Settings:
            Run this script using the logged on credentials - No
            Enforce script signature check - No
            Run script in 64-bit PowerShell Host - Yes
#>

#### Logging Variables ####
$Script:ScriptName = "OIB-AutoTimezone"
$Script:LogFile = "$ScriptName.log"
$Script:LogsFolder = "$env:ProgramData\Microsoft\IntuneManagementExtension\Logs"

#### Script Variables ####
$ErrorActionPreference = [System.Management.Automation.ActionPreference]::SilentlyContinue
$Host.UI.RawUI.WindowTitle = '$ScriptName'

$LocationValue = "Allow" # Allow - Forces the "Let apps access your location" toggle in Settings > Privacy & Security to "On".
$AutoTZValue = "3" # 3 - Enables the automatic time zone setting.
$LFSVCValue = "1" # 1 - Enables location services.
$SensorValue = "1" # 1 - Enables the Windows Location Platform for the SENSOR_CATEGORY_LOCATION device sensor set: https://learn.microsoft.com/en-us/windows/win32/sensorsapi/sensor-category-location.

#### Functions ####
function Start-Logging {
    Start-Transcript -Path $LogsFolder\$LogFile -Append
    Write-Host "Current script timestamp: $(Get-Date -f yyyy-MM-dd_HH-mm)"
}

function Set-RegistryValue {
    param (
        [string]$Path,
        [string]$Name,
        [string]$Value
    )
    try {
        $currentValue = (Get-ItemProperty -Path $Path -Name $Name).$Name
        if ($currentValue -ne $Value) {
            Write-Host "Setting $Name to $Value at $Path"
            Set-ItemProperty -Path $Path -Name $Name -Value $Value
        } 
        else {
            Write-Host "$Name is already set to $Value at $Path"
        }
    } 
    catch {
        Write-Error "$($_.Exception.Message)"
    }
}

#### Script ####
Start-Logging

try {
    # Set the location value
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Value $LocationValue

    # Enable Auto Timezone value and (re)start service
    Set-RegistryValue -Path "HKLM:\SYSTEM\CurrentControlSet\Services\tzautoupdate" -Name "Start" -Value $AutoTZValue
    Set-RegistryValue -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Value $LFSVCValue
    Write-Host "(Re)Starting geolocation service"
    $lfsvc = Get-Service -Name lfsvc
    if ($lfsvc.Status -ne "Running") {
        Start-Service -Name lfsvc
    }
    else {
        Restart-Service -Name lfsvc -Force
    }

    # Set sensor value
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Value $SensorValue
    Exit 0
}
catch {
    Write-Error "$($_.Exception.Message)"
    Exit 1
}
