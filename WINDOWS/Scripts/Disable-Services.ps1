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

$LevelOne = $true     # Toggle Level 1 enforcement
$LevelTwo = $false    # Toggle Level 2 enforcement

# List of services to exclude from modification (case-sensitive)
$ExcludeList = @(
    'ExampleService'   # Skip disabling ExampleService
)

$ErrorCount = 0        # Initialise ErrorCount


#### Logging Variables ####
$Script:ScriptName = "OIB-DisableServices"
$Script:LogFile = "$ScriptName.log"
$Script:LogsFolder = "$env:ProgramData\Microsoft\IntuneManagementExtension\Logs"


#### Script Variables ####
$ErrorActionPreference = [System.Management.Automation.ActionPreference]::Stop
$Host.UI.RawUI.WindowTitle = '$ScriptName'


#### Functions ####
function Start-Logging {
    Start-Transcript -Path $LogsFolder\$LogFile -Append
    Write-Host "Current script timestamp: $(Get-Date -f yyyy-MM-dd_HH-mm)"
}

function Stop-LoggingExit {
    param ( [int]$ExitCode = 0 )
    Write-Host "Script complete timestamp: $(Get-Date -f yyyy-MM-dd_HH-mm)"
    Stop-Transcript
    Exit $ExitCode
}

function Write-CISServiceStatus {
    param (
        [pscustomobject]$Service,
        [string]$Status
    )

    Write-Host  "CIS $($Service.CISRef.PadRight(5)) ($($Service.CISLevel)) '$($Service.Description) ($($Service.Name))' is '$Status'"
}

trap {
    Write-Host "TRAP: An unhandled error occurred:"
    if ($_ -is [System.Management.Automation.ErrorRecord]) {
        Write-Host "Message     : $($_.Exception.Message)"
        Write-Host "Script Line : $($_.InvocationInfo.Line)"
        Write-Host "StackTrace  : $($_.ScriptStackTrace)"
    } else {
        Write-Host "Raw Error   : $_"
    }
    Stop-LoggingExit -ExitCode 1
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
    Write-Host "'CIS 81.3  (L1) Computer Browser (Browser)' is set to 'Disabled'"
}

# Table of Services
$ServiceTable = @"
Name	CISRef	CISLevel	Description
BTAGService	81.1	L2	Bluetooth Audio Gateway Service
bthserv	81.2	L2	Bluetooth Support Service
MapsBroker	81.4	L2	Downloaded Maps Manager
GameInputSvc	81.5	L2	GameInput Service
lfsvc	81.6	L2	Geolocation Service
IISADMIN	81.7	L1	IIS Admin Service
irmon	81.8	L1	Infrared monitor service
lltdsvc	81.9	L2	Link-Layer Topology Discovery Mapper
LxssManager	81.1	L1	LxssManager
FTPSVC	81.11	L1	Microsoft FTP Service
MSiSCSI	81.12	L2	Microsoft iSCSI Initiator Service
sshd	81.13	L1	OpenSSH SSH Server
Spooler	81.14	L2	Print Spooler
wercplsupport	81.15	L2	Problem Reports and Solutions Control Panel Support
RasAuto	81.16	L2	Remote Access Auto Connection Manager
SessionEnv	81.17	L2	Remote Desktop Configuration
TermService	81.18	L2	Remote Desktop Services
UmRdpService	81.19	L2	Remote Desktop Services UserMode Port Redirector
RpcLocator	81.2	L1	Remote Procedure Call (RPC) Locator
RemoteRegistry	81.21	L2	Remote Registry
RemoteAccess	81.22	L1	Routing and Remote Access
LanmanServer	81.23	L2	Server
simptcp	81.24	L1	Simple TCP/IP Services
SNMP	81.25	L2	SNMP Service
sacsvr	81.26	L1	Special Administration Console Helper
SSDPSRV	81.27	L1	SSDP Discovery
upnphost	81.28	L1	UPnP Device Host
WMSvc	81.29	L1	Web Management Service
WerSvc	81.3	L2	Windows Error Reporting Service
Wecsvc	81.31	L2	Windows Event Collector
WMPNetworkSvc	81.32	L1	Windows Media Player Network Sharing Service
icssvc	81.33	L1	Windows Mobile Hotspot Service
WpnService	81.34	L2	Windows Push Notifications System Service
PushToInstall	81.35	L2	Windows PushToInstall Service
WinRM	81.36	L2	Windows Remote Management (WS-Management)
WinHttpAutoProxySvc	81.37	L2	WinHTTP Web Proxy Auto-Discovery Service
W3SVC	81.38	L1	World Wide Web Publishing Service
XboxGipSvc	81.39	L1	Xbox Accessory Management Service
XblAuthManager	81.4	L1	Xbox Live Auth Manager
XblGameSave	81.41	L1	Xbox Live Game Save
XboxNetApiSvc	81.42	L1	Xbox Live Networking Service
"@ | ConvertFrom-Csv -Delimiter "`t"

foreach ($service in $serviceTable) {
    if (
        $ExcludeList -notcontains $service.Name -and
        (
            ($service.CISLevel -eq 'L1' -and $LevelOne) -or
            ($service.CISLevel -eq 'L2' -and $LevelTwo)
        )
    ) {
        try {
            $svc = Get-Service -Name $service.Name -ErrorAction Stop
        } catch {
            # If the service isn't installed, it's considered compliant - not an error
            Write-CISServiceStatus -Service $service -Status 'Not Installed'
            continue
        }

        if ($svc.Status -ne 'Stopped') {
            try {
                Stop-Service -Name $service.Name -Force -ErrorAction Stop
                Write-CISServiceStatus -Service $service -Status 'Stopped'
            } catch {
                Write-Warning "Could not stop service '$($service.Name)': $($_.Exception.Message)"
            }
        }

        if ($svc.StartType -ne 'Disabled') {
            try {
                Set-Service -Name $service.Name -StartupType Disabled -ErrorAction Stop
                Write-CISServiceStatus -Service $service -Status 'Disabled'
            } catch {
                Write-Warning "Could not disable service '$($service.Name)': $($_.Exception.Message)"
                # Increment error count on compliance failure
                $ErrorCount++
                continue
            }
        }

        Write-CISServiceStatus -Service $service -Status 'Disabled'
    }
}

Stop-LoggingExit -ExitCode $ErrorCount