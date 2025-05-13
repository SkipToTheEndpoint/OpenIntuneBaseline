<#
    .SYNOPSIS
        Script to trigger updates following an Autopilot deployment.
   
    .NOTES
        Author: James Robinson | SkipToTheEndpoint | https://skiptotheendpoint.co.uk
        Version: v1
        Release Date: 2024-08-31

        Intune Info:
        Script type - Platform Script
        Assign to - Users
        Script Settings:
            Run this script using the logged on credentials - No
            Enforce script signature check - No
            Run script in 64-bit PowerShell Host - Yes
#>

#### Logging Variables ####
$Script:ScriptName = "OIB-PostOOBEUpdates.log"
$Script:LogFile = "$ScriptName.log"
$Script:LogsFolder = "$env:ProgramData\Microsoft\IntuneManagementExtension\Logs"


#### Script Variables ####
$ErrorActionPreference = [System.Management.Automation.ActionPreference]::SilentlyContinue
$Host.UI.RawUI.WindowTitle = '$ScriptName'

#### Functions ####
function Start-Logging {
    Start-Transcript -Path $LogsFolder\$LogFile -Append
    Write-Host "Current script timestamp: $(Get-Date -f yyyy-MM-dd_HH-mm)"
}

#### Script ####
Start-Logging

try {
    # Update MDE
    Write-Host "Triggering MDE Update..."
    Update-MpSignature
    Start-Sleep 10

    # Update Store Apps
    Write-Host "Triggering Store App Updates..."
    Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
    Start-Sleep 10

    # Start WU Check
    Write-Host "Triggering Windows Update Check..."
    Start-Process USOClient.exe -ArgumentList "StartInteractiveScan" -NoNewWindow -Wait
    Start-Sleep 10

    # Stop Logging and Exit
    Write-Host "Script complete."
    Stop-Transcript
    Exit 0
}
catch {
    Write-Error "$($_.Exception.Message)"
    Exit 1
}