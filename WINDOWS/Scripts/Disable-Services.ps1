<#
    .SYNOPSIS
        Disables Windows services based on CIS Benchmarks Level 1 and Level 2 recommendations.

    .DESCRIPTION
        This script automates the disabling of unnecessary or high-risk Windows services in compliance with the Center for Internet Security (CIS) Benchmarks. It supports both Level 1 and Level 2 controls, with the ability to enable or disable enforcement levels through configuration variables.

        The script:
        - Reads a list of services with CIS references and levels.
        - Allows you to control which levels (L1, L2) are enforced using the `$LevelOne` and `$LevelTwo` flags.
        - Allows you to exclude specific services from being modified using the `$ExcludeList` array.
        - Performs safe checks to ensure a service exists before attempting to stop or disable it.
        - Handles special cases (like `Computer Browser`) using registry edits to avoid known issues with system drivers (`bowser`).

        ### Configuration:

        - `$LevelOne = $true`: Enables enforcement of CIS Level 1 service rules.
        - `$LevelTwo = $false`: Enables enforcement of CIS Level 2 service rules.
        - `$ExcludeList = @('Spooler', 'WinRM')`: Specify service names (case-sensitive) to skip during execution.
   
    .NOTES
        Author: MadCrabCyder | https://github.com/MadCrabCyder
        Version: v2.1
        Release Date: 2025-08-01

        Intune Info:
        Script type - Platform Script
        Assign to - Devices
        Script Settings:
            Run this script using the logged on credentials - No
            Enforce script signature check - No
            Run script in 64-bit PowerShell Host - Yes
#>

#### Configuration Variables ####

$Script:LevelOne = $true     # Toggle Level 1 enforcement
$Script:LevelTwo = $false    # Toggle Level 2 enforcement

# List of services to exclude from modification (case-sensitive)
$Script:ExcludeList = @(
    'ExampleService'   # Skip disabling ExampleService
)


#### Logging Variables ####
$Script:ScriptName = "OIB-DisableServices"
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

function Stop-Logging {
    Write-Host "Script complete timestamp: $(Get-Date -f yyyy-MM-dd_HH-mm)"
    Stop-Transcript
}


#### Script ####
Start-Logging

#######################################################
# CIS 81.3 (L1) - 'Computer Browser' is deprecated and not present on Windows 10 1709+.
# Using Set/Get-Service may incorrectly target the 'bowser' driver (also named 'Browser').
# We disable it safely via registry to avoid impacting critical networking components.
$Path = "HKLM:\SYSTEM\CurrentControlSet\Services\Browser"
if ($ExcludeList -notcontains 'Browser' -and $LevelOne -and (Test-Path -LiteralPath $Path)) {
    Set-ItemProperty -LiteralPath $Path -Name 'Start' -Value 4 -Verbose
    Write-Host "'CIS 81.3 (L1) Computer Browser (Browser)' is set to 'Disabled'"
}

# Services to Disable
@"
Name	Level	CISReference
BTAGService	L2	CIS 81.1 (L2) Bluetooth Audio Gateway Service
bthserv	L2	CIS 81.2 (L2) Bluetooth Support Service
MapsBroker	L2	CIS 81.4 (L2) Downloaded Maps Manager
GameInputSvc	L2	CIS 81.5 (L2) GameInput Service
lfsvc	L2	CIS 81.6 (L2) Geolocation Service
IISADMIN	L1	CIS 81.7 (L1) IIS Admin Service
irmon	L1	CIS 81.8 (L1) Infrared monitor service
lltdsvc	L2	CIS 81.9 (L2) Link-Layer Topology Discovery Mapper
LxssManager	L1	CIS 81.10 (L1) LxssManager
FTPSVC	L1	CIS 81.11 (L1) Microsoft FTP Service
MSiSCSI	L2	CIS 81.12 (L2) Microsoft iSCSI Initiator Service
sshd	L1	CIS 81.13 (L1) OpenSSH SSH Server
Spooler	L2	CIS 81.14 (L2) Print Spooler
wercplsupport	L2	CIS 81.15 (L2) Problem Reports and Solutions Control Panel Support
RasAuto	L2	CIS 81.16 (L2) Remote Access Auto Connection Manager
SessionEnv	L2	CIS 81.17 (L2) Remote Desktop Configuration
TermService	L2	CIS 81.18 (L2) Remote Desktop Services
UmRdpService	L2	CIS 81.19 (L2) Remote Desktop Services UserMode Port Redirector
RpcLocator	L1	CIS 81.20 (L1) Remote Procedure Call (RPC) Locator
RemoteRegistry	L2	CIS 81.21 (L2) Remote Registry
RemoteAccess	L1	CIS 81.22 (L1) Routing and Remote Access
LanmanServer	L2	CIS 81.23 (L2) Server
simptcp	L1	CIS 81.24 (L1) Simple TCP/IP Services
SNMP	L2	CIS 81.25 (L2) SNMP Service
sacsvr	L1	CIS 81.26 (L1) Special Administration Console Helper
SSDPSRV	L1	CIS 81.27 (L1) SSDP Discovery
upnphost	L1	CIS 81.28 (L1) UPnP Device Host
WMSvc	L1	CIS 81.29 (L1) Web Management Service
WerSvc	L2	CIS 81.30 (L2) Windows Error Reporting Service
Wecsvc	L2	CIS 81.31 (L2) Windows Event Collector
WMPNetworkSvc	L1	CIS 81.32 (L1) Windows Media Player Network Sharing Service
icssvc	L1	CIS 81.33 (L1) Windows Mobile Hotspot Service
WpnService	L2	CIS 81.34 (L2) Windows Push Notifications System Service
PushToInstall	L2	CIS 81.35 (L2) Windows PushToInstall Service
WinRM	L2	CIS 81.36 (L2) Windows Remote Management (WS-Management)
WinHttpAutoProxySvc	L2	CIS 81.37 (L2) WinHTTP Web Proxy Auto-Discovery Service
W3SVC	L1	CIS 81.38 (L1) World Wide Web Publishing Service
XboxGipSvc	L1	CIS 81.39 (L1) Xbox Accessory Management Service
XblAuthManager	L1	CIS 81.40 (L1) Xbox Live Auth Manager
XblGameSave	L1	CIS 81.41 (L1) Xbox Live Game Save
XboxNetApiSvc	L1	CIS 81.42 (L1) Xbox Live Networking Service
"@ | ConvertFrom-Csv -Delimiter "`t" | ForEach-Object {

    $ServiceName = $_.Name
    $ServiceLevel = $_.Level
    $CISReference = $_.CISReference
    $svc = $null

    if (
        $ExcludeList -notcontains $ServiceName -and
        (
            ($ServiceLevel -eq 'L1' -and $LevelOne) -or
            ($ServiceLevel -eq 'L2' -and $LevelTwo)
        )
    ) {

        # Check to see if the service exists
        try {
            $svc = Get-Service -Name $ServiceName -ErrorAction Stop
        } catch {
            Write-Host "'$CISReference ($ServiceName)' is 'Not Installed'"
        }

        if ($null -ne $svc) {

            # Stop the service if it's not already stopped
            if ($svc.Status -ne 'Stopped') {
                try {
                    Stop-Service -Name $ServiceName -Force -ErrorAction Stop
                    Write-Host "'$CISReference ($ServiceName)' is 'Stopped'"
                } catch {
                    Write-Warning "Could not stop service '$ServiceName'. Reason: $($_.Exception.Message)"
                }
            }

            # Set the service to Disabled
            try {
                Set-Service -Name $ServiceName -StartupType Disabled -ErrorAction Stop
                Write-Host "'$CISReference ($ServiceName)' is set to 'Disabled'"
            } catch {
                Write-Warning "Could not disable service '$ServiceName'. Reason: $($_.Exception.Message)"
            }
        }
    }
}

Stop-Logging
Exit 0 # Always return success as Errors are handled gracefully