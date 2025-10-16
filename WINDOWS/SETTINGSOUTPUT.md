# Intune documentation

*OS:* Windows

*Version:* v3.7

*Generated:* 2025-10-15


## Table of Contents
- [Device configuration](#section-1)

  - [Settings Catalog](#section-2)

    - [Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (Audit Mode) - v3.1](#section-3)

    - [Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (L2) - v3.7](#section-4)

    - [Win - OIB - ES - Defender Antivirus - D - AV Configuration - v3.3](#section-5)

    - [Win - OIB - ES - Defender Antivirus - D - Security Experience - v3.3](#section-6)

    - [Win - OIB - ES - Defender Antivirus Updates - Ring 1 - Pilot - v3.4](#section-7)

    - [Win - OIB - ES - Defender Antivirus Updates - Ring 2 - UAT - v3.4](#section-8)

    - [Win - OIB - ES - Defender Antivirus Updates - Ring 3 - Production - v3.4](#section-9)

    - [Win - OIB - ES - Encryption - D - BitLocker (OS Disk) - v3.7](#section-10)

    - [Win - OIB - ES - Encryption - U - Personal Data Encryption - v3.4](#section-11)

    - [Win - OIB - ES - Local Group Membership - D - Local Administrators - v3.7](#section-12)

    - [Win - OIB - ES - Windows Firewall - D - Firewall Configuration - v3.1](#section-13)

    - [Win - OIB - ES - Windows Hello for Business - D - WHfB Configuration - v3.2](#section-14)

    - [Win - OIB - ES - Windows LAPS - D - LAPS Configuration - v3.1](#section-15)

    - [Win - OIB - ES - Windows LAPS - D - LAPS Configuration (24H2+) - v3.6](#section-16)

    - [Win - OIB - SC - Credential Management - D - Passwordless - v3.3](#section-17)

    - [Win - OIB - SC - Defender Antivirus - D - Additional Configuration - v3.6](#section-18)

    - [Win - OIB - SC - Device Security - D - Administrator Protection - v3.7](#section-19)

    - [Win - OIB - SC - Device Security - D - Audit and Event Logging - v3.7](#section-20)

    - [Win - OIB - SC - Device Security - D - Config Refresh - v3.2](#section-21)

    - [Win - OIB - SC - Device Security - D - Enhanced Phishing Protection - v3.0](#section-22)

    - [Win - OIB - SC - Device Security - D - Local Security Policies - v3.0](#section-23)

    - [Win - OIB - SC - Device Security - D - Local Security Policies (24H2+) - v3.6](#section-24)

    - [Win - OIB - SC - Device Security - D - Location and Privacy - v3.2](#section-25)

    - [Win - OIB - SC - Device Security - D - Login and Lock Screen - v3.1](#section-26)

    - [Win - OIB - SC - Device Security - D - Printing - v3.7](#section-27)

    - [Win - OIB - SC - Device Security - D - Remote Desktop Services and RPC - v3.0](#section-28)

    - [Win - OIB - SC - Device Security - D - Script File Associations - v3.4](#section-29)

    - [Win - OIB - SC - Device Security - D - Security Hardening - v3.7](#section-30)

    - [Win - OIB - SC - Device Security - D - Timezone - v3.4](#section-31)

    - [Win - OIB - SC - Device Security - D - User Rights - v3.7](#section-32)

    - [Win - OIB - SC - Device Security - D - Windows Package Manager  - v3.5](#section-33)

    - [Win - OIB - SC - Device Security - D - Windows Subsystem for Linux - v3.2](#section-34)

    - [Win - OIB - SC - Device Security - U - Device Guard, Credential Guard and HVCI - v3.7](#section-35)

    - [Win - OIB - SC - Device Security - U - Power and Device Lock - v3.6](#section-36)

    - [Win - OIB - SC - Device Security - U - Windows Sandbox - v3.4](#section-37)

    - [Win - OIB - SC - Device Security - U - Windows Spotlight and Org Messages - v3.0](#section-38)

    - [Win - OIB - SC - Internet Explorer (Legacy) - D - Security - v3.1.1](#section-39)

    - [Win - OIB - SC - Microsoft Accounts - D - Configuration - v3.2](#section-40)

    - [Win - OIB - SC - Microsoft Edge - D - Security - v3.7](#section-41)

    - [Win - OIB - SC - Microsoft Edge - D - Updates - v3.6](#section-42)

    - [Win - OIB - SC - Microsoft Edge - U - Extensions - v3.1](#section-43)

    - [Win - OIB - SC - Microsoft Edge - U - Password Management - v3.0](#section-44)

    - [Win - OIB - SC - Microsoft Edge - U - Profiles, Sign-In and Sync - v3.0](#section-45)

    - [Win - OIB - SC - Microsoft Edge - U - User Experience - v3.7](#section-46)

    - [Win - OIB - SC - Microsoft Office - D - Security - v3.6](#section-47)

    - [Win - OIB - SC - Microsoft Office - D - Updates - v3.0](#section-48)

    - [Win - OIB - SC - Microsoft Office - U - Config and Experience - v3.6](#section-49)

    - [Win - OIB - SC - Microsoft Office - U - Security - v3.6](#section-50)

    - [Win - OIB - SC - Microsoft OneDrive - D - Configuration - v3.2](#section-51)

    - [Win - OIB - SC - Microsoft OneDrive - U - Configuration - v3.0](#section-52)

    - [Win - OIB - SC - Microsoft Store - D - Configuration - v3.4](#section-53)

    - [Win - OIB - SC - Microsoft Store - U - Configuration - v3.3](#section-54)

    - [Win - OIB - SC - Windows Hello for Business - D - Cloud Kerberos Trust - v3.5](#section-55)

    - [Win - OIB - SC - Windows Update for Business - D - Delivery Optimisation - v3.0](#section-56)

    - [Win - OIB - SC - Windows Update for Business - D - Reports and Telemetry - v3.0](#section-57)

    - [Win - OIB - SC - Windows User Experience - D - Feature Configuration - v3.1](#section-58)

    - [Win - OIB - SC - Windows User Experience - D - Settings Sync - v3.7](#section-59)

    - [Win - OIB - SC - Windows User Experience - U - Copilot - v3.6](#section-60)


<h1 id="section-1">Device configuration</h1>
<h2 id="section-2">Settings Catalog</h2>
<h3 id="section-3">Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (Audit Mode) - v3.1</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (Audit Mode) - v3.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Attack surface reduction</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Attack Surface Reduction Rules</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:18</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:36:18</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 1. Basics - Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (Audit Mode) - v3.1


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>Attack Surface Reduction Rules</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Block execution of potentially obfuscated scripts</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Office communication application from creating child processes</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block all Office applications from creating child processes</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Win32 API calls from Office macros</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block executable files from running unless they meet a prevalence, age, or trusted list criterion</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block JavaScript or VBScript from launching downloaded executable content</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block untrusted and unsigned processes that run from USB</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Adobe Reader from creating child processes</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block credential stealing from the Windows local security authority subsystem</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block abuse of exploited vulnerable signed drivers (Device)</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block persistence through WMI event subscription</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block use of copied or impersonated system tools</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Office applications from injecting code into other processes</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use advanced protection against ransomware</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block process creations originating from PSExec and WMI commands</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Office applications from creating executable content</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block rebooting machine in Safe Mode</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block executable content from email client and webmail</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Controlled Folder Access</td>
<td class='property-column2'>Audit Mode</td>
</tr>
</table>

###### Table 2. Settings - Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (Audit Mode) - v3.1


<h3 id="section-4">Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (L2) - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (L2) - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>DO NOT ASSIGN THIS POLICY WITHOUT VALIDATING VIA AUDIT MODE FIRST!<br />https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-deployment-operationalize</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Attack surface reduction</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Attack Surface Reduction Rules</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>22 August 2024 18:56:38</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>09 September 2025 16:51:29</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 3. Basics - Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (L2) - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>Attack Surface Reduction Rules</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Block execution of potentially obfuscated scripts</td>
<td class='property-column2'>Warn</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Office communication application from creating child processes</td>
<td class='property-column2'>Warn</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block all Office applications from creating child processes</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Win32 API calls from Office macros</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block executable files from running unless they meet a prevalence, age, or trusted list criterion</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block JavaScript or VBScript from launching downloaded executable content</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block untrusted and unsigned processes that run from USB</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Adobe Reader from creating child processes</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block credential stealing from the Windows local security authority subsystem</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block abuse of exploited vulnerable signed drivers (Device)</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block persistence through WMI event subscription</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block use of copied or impersonated system tools</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Office applications from injecting code into other processes</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use advanced protection against ransomware</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block process creations originating from PSExec and WMI commands</td>
<td class='property-column2'>Warn</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Office applications from creating executable content</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block rebooting machine in Safe Mode</td>
<td class='property-column2'>Audit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block executable content from email client and webmail</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Controlled Folder Access</td>
<td class='property-column2'>Audit Mode</td>
</tr>
</table>

###### Table 4. Settings - Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (L2) - v3.7


<h3 id="section-5">Win - OIB - ES - Defender Antivirus - D - AV Configuration - v3.3</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Defender Antivirus - D - AV Configuration - v3.3</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Antivirus</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Microsoft Defender Antivirus</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>21 August 2024 12:15:30</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:34:28</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 5. Basics - Win - OIB - ES - Defender Antivirus - D - AV Configuration - v3.3


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Archive Scanning</td>
<td class='property-column2'>Allowed. Scans the archive files.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Behavior Monitoring</td>
<td class='property-column2'>Allowed. Turns on real-time behavior monitoring.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Cloud Protection</td>
<td class='property-column2'>Allowed. Turns on Cloud Protection.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Email Scanning</td>
<td class='property-column2'>Allowed. Turns on email scanning.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Full Scan Removable Drive Scanning</td>
<td class='property-column2'>Allowed. Scans removable drives.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow scanning of all downloaded files and attachments</td>
<td class='property-column2'>Allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Realtime Monitoring</td>
<td class='property-column2'>Allowed. Turns on and runs the real-time monitoring service.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Scanning Network Files</td>
<td class='property-column2'>Allowed. Scans network files.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Script Scanning</td>
<td class='property-column2'>Allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow User UI Access</td>
<td class='property-column2'>Allowed. Lets users access UI.</td>
</tr>
<tr class=''>
<td class='property-column1'>Avg CPU Load Factor</td>
<td class='property-column2'>50</td>
</tr>
<tr class=''>
<td class='property-column1'>Check For Signatures Before Running Scan</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Cloud Block Level</td>
<td class='property-column2'>High</td>
</tr>
<tr class=''>
<td class='property-column1'>Cloud Extended Timeout</td>
<td class='property-column2'>50</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Catchup Full Scan</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Catchup Quick Scan</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Low CPU Priority</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Network Protection</td>
<td class='property-column2'>Enabled (block mode)</td>
</tr>
<tr class=''>
<td class='property-column1'>PUA Protection</td>
<td class='property-column2'>PUA Protection on. Detected items are blocked. They will show in history along with other threats.</td>
</tr>
<tr class=''>
<td class='property-column1'>Real Time Scan Direction</td>
<td class='property-column2'>Monitor all files (bi-directional).</td>
</tr>
<tr class=''>
<td class='property-column1'>Schedule Quick Scan Time</td>
<td class='property-column2'>660</td>
</tr>
<tr class=''>
<td class='property-column1'>Signature Update Interval</td>
<td class='property-column2'>1</td>
</tr>
<tr class=''>
<td class='property-column1'>Submit Samples Consent</td>
<td class='property-column2'>Send safe samples automatically.</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Local Admin Merge</td>
<td class='property-column2'>Disable Local Admin Merge</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow On Access Protection</td>
<td class='property-column2'>Allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Threat Severity Default Action</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Remediation action for High severity threats</td>
<td class='property-column2'>Remove. Removes files from system.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Remediation action for Severe threats</td>
<td class='property-column2'>Remove. Removes files from system.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Remediation action for Low severity threats</td>
<td class='property-column2'>Block. Blocks file execution.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Remediation action for Moderate severity threats</td>
<td class='property-column2'>Remove. Removes files from system.</td>
</tr>
<tr class=''>
<td class='property-column1'>Metered Connection Updates</td>
<td class='property-column2'>Allowed</td>
</tr>
</table>

###### Table 6. Settings - Win - OIB - ES - Defender Antivirus - D - AV Configuration - v3.3


<h3 id="section-6">Win - OIB - ES - Defender Antivirus - D - Security Experience - v3.3</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Defender Antivirus - D - Security Experience - v3.3</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: The "Tamper Protection" setting requires an active Defender for Endpoint P1/P2 or Defender for Business license.<br /><br />https://learn.microsoft.com/en-us/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Antivirus</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Windows Security Experience</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>29 July 2024 15:33:50</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>28 February 2025 12:41:56</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 7. Basics - Win - OIB - ES - Defender Antivirus - D - Security Experience - v3.3


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>TamperProtection (Device)</td>
<td class='property-column2'>On</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows Defender Security Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Family UI</td>
<td class='property-column2'>(Enable) The users cannot see the display of the family options area in Windows Defender Security Center.</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Enhanced Notifications</td>
<td class='property-column2'>(Disable) Windows Defender Security Center will display critical and non-critical notifications to users..</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide Windows Security Notification Area Control</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 8. Settings - Win - OIB - ES - Defender Antivirus - D - Security Experience - v3.3


<h3 id="section-7">Win - OIB - ES - Defender Antivirus Updates - Ring 1 - Pilot - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Defender Antivirus Updates - Ring 1 - Pilot - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Antivirus</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Defender Update controls</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>19 August 2023 17:17:32</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>24 January 2025 13:16:50</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 9. Basics - Win - OIB - ES - Defender Antivirus Updates - Ring 1 - Pilot - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>Engine Updates Channel</td>
<td class='property-column2'>Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments.</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform Updates Channel</td>
<td class='property-column2'>Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments.</td>
</tr>
<tr class=''>
<td class='property-column1'>Security Intelligence Updates Channel</td>
<td class='property-column2'><details class='description'><summary data-open='Minimize' data-close='Not configured (Default). Microsoft will...expand'></summary>Not configured (Default). Microsoft will either assign the device to Current Channel (Broad) or a beta channel early in the gradual release cycle. The channel selected by Microsoft might be one that receives updates early during the gradual release cycle, which may not be suitable for devices in a production or critical environment</details></td>
</tr>
</table>

###### Table 10. Settings - Win - OIB - ES - Defender Antivirus Updates - Ring 1 - Pilot - v3.4


<h3 id="section-8">Win - OIB - ES - Defender Antivirus Updates - Ring 2 - UAT - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Defender Antivirus Updates - Ring 2 - UAT - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Antivirus</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Defender Update controls</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>19 August 2023 17:19:59</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>24 January 2025 13:17:46</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 11. Basics - Win - OIB - ES - Defender Antivirus Updates - Ring 2 - UAT - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>Engine Updates Channel</td>
<td class='property-column2'>Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%).</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform Updates Channel</td>
<td class='property-column2'>Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%).</td>
</tr>
<tr class=''>
<td class='property-column1'>Security Intelligence Updates Channel</td>
<td class='property-column2'>Current Channel (Staged): Same as Current Channel (Broad).</td>
</tr>
</table>

###### Table 12. Settings - Win - OIB - ES - Defender Antivirus Updates - Ring 2 - UAT - v3.4


<h3 id="section-9">Win - OIB - ES - Defender Antivirus Updates - Ring 3 - Production - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Defender Antivirus Updates - Ring 3 - Production - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Antivirus</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Defender Update controls</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>19 August 2023 17:21:03</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>24 January 2025 13:17:54</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 13. Basics - Win - OIB - ES - Defender Antivirus Updates - Ring 3 - Production - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>Engine Updates Channel</td>
<td class='property-column2'>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform Updates Channel</td>
<td class='property-column2'>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</td>
</tr>
<tr class=''>
<td class='property-column1'>Security Intelligence Updates Channel</td>
<td class='property-column2'>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in all populations, including production.</td>
</tr>
</table>

###### Table 14. Settings - Win - OIB - ES - Defender Antivirus Updates - Ring 3 - Production - v3.4


<h3 id="section-10">Win - OIB - ES - Encryption - D - BitLocker (OS Disk) - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Encryption - D - BitLocker (OS Disk) - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Disk encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>BitLocker</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:29</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>13 August 2025 13:51:08</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 15. Basics - Win - OIB - ES - Encryption - D - BitLocker (OS Disk) - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Operating System Drives</td>
</tr>
<tr class=''>
<td class='property-column1'>Enforce drive encryption type on operating system drives</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Select the encryption type: (Device)</td>
<td class='property-column2'>Full encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Require additional authentication at startup</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure TPM startup key and PIN:</td>
<td class='property-column2'>Do not allow startup key and PIN with TPM</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure TPM startup PIN:</td>
<td class='property-column2'>Do not allow startup PIN with TPM</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure TPM startup:</td>
<td class='property-column2'>Require TPM</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure TPM startup key:</td>
<td class='property-column2'>Do not allow startup key with TPM</td>
</tr>
<tr class=''>
<td class='property-column1'>Disallow standard users from changing the PIN or password</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Choose how BitLocker-protected operating system drives can be recovered</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Omit recovery options from the BitLocker setup wizard</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow data recovery agent</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure storage of BitLocker recovery information to AD DS:</td>
<td class='property-column2'>Store recovery passwords and key packages</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Do not enable BitLocker until recovery information is stored to AD DS for operating system drives</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Save BitLocker recovery information to AD DS for operating system drives</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure user storage of BitLocker recovery information:</td>
<td class='property-column2'>Require 48-digit recovery password</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Do not allow 256-bit recovery key</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>BitLocker Drive Encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Select the encryption method for removable data drives:</td>
<td class='property-column2'>AES-CBC 256-bit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Select the encryption method for fixed data drives:</td>
<td class='property-column2'>XTS-AES 256-bit</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Select the encryption method for operating system drives:</td>
<td class='property-column2'>XTS-AES 256-bit</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>BitLocker</td>
</tr>
<tr class=''>
<td class='property-column1'>Require Device Encryption</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Warning For Other Disk Encryption</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Standard User Encryption</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Recovery Password Rotation</td>
<td class='property-column2'>Refresh on for Entra ID-joined devices</td>
</tr>
</table>

###### Table 16. Settings - Win - OIB - ES - Encryption - D - BitLocker (OS Disk) - v3.7


<h3 id="section-11">Win - OIB - ES - Encryption - U - Personal Data Encryption - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Encryption - U - Personal Data Encryption - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: PDE is only applicable to Windows 11 22H2 or higher, Entra-Joined devices and does not work on Windows Pro/Business SKU's:<br />https://learn.microsoft.com/en-us/windows/security/operating-system-security/data-protection/personal-data-encryption/</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Disk encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Personal Data Encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>24 September 2024 10:22:15</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:35:45</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 17. Basics - Win - OIB - ES - Encryption - U - Personal Data Encryption - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Personal Data Encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Personal Data Encryption (User)</td>
<td class='property-column2'>Enable Personal Data Encryption.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protect Pictures (User)</td>
<td class='property-column2'>Enable Personal Data Encryption on the folder.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protect Documents (User)</td>
<td class='property-column2'>Enable Personal Data Encryption on the folder.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protect Desktop (User)</td>
<td class='property-column2'>Enable Personal Data Encryption on the folder.</td>
</tr>
</table>

###### Table 18. Settings - Win - OIB - ES - Encryption - U - Personal Data Encryption - v3.4


<h3 id="section-12">Win - OIB - ES - Local Group Membership - D - Local Administrators - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Local Group Membership - D - Local Administrators - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Account protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Local user group membership</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>26 August 2025 18:06:02</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>26 September 2025 14:43:05</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 19. Basics - Win - OIB - ES - Local Group Membership - D - Local Administrators - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Group Configuration</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>access group</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Local group</td>
<td class='property-column2'>Administrators</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Group and user action</td>
<td class='property-column2'>Add (Replace)</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>User selection type</td>
<td class='property-column2'>Manual</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Selected user(s)</td>
<td class='property-column2'>WLapsAdmin</td>
</tr>
</table>

###### Table 20. Settings - Win - OIB - ES - Local Group Membership - D - Local Administrators - v3.7


<h3 id="section-13">Win - OIB - ES - Windows Firewall - D - Firewall Configuration - v3.1</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Windows Firewall - D - Firewall Configuration - v3.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Firewall</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Windows Firewall</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:44</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:36:05</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 21. Basics - Win - OIB - ES - Windows Firewall - D - Firewall Configuration - v3.1


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Auditing</td>
</tr>
<tr class=''>
<td class='property-column1'>Object Access Audit Filtering Platform Connection</td>
<td class='property-column2'>Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Object Access Audit Filtering Platform Packet Drop</td>
<td class='property-column2'>Failure</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Firewall</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Stateful Ftp</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Domain Network Firewall</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Default Inbound Action for Domain Profile</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Default Outbound Action</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Inbound Notifications</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Log Max File Size</td>
<td class='property-column2'>16384</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Stealth Mode</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Log Dropped Packets</td>
<td class='property-column2'>Enable Logging Of Dropped Packets</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Log Success Connections</td>
<td class='property-column2'>Enable Logging Of Successful Connections</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Log File Path</td>
<td class='property-column2'>%SystemRoot%\System32\logfiles\firewall\domainfw.log</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Private Network Firewall</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Inbound Notifications</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Default Outbound Action</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Log Max File Size</td>
<td class='property-column2'>16384</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Default Inbound Action for Private Profile</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Log Dropped Packets</td>
<td class='property-column2'>Enable Logging Of Dropped Packets</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Log Success Connections</td>
<td class='property-column2'>Enable Logging Of Successful Connections</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Log File Path</td>
<td class='property-column2'>%SystemRoot%\System32\logfiles\firewall\privatefw.log</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Public Network Firewall</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Log Max File Size</td>
<td class='property-column2'>16384</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Local Policy Merge</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Default Outbound Action</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Inbound Notifications</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Default Inbound Action for Public Profile</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Log Ignored Rules</td>
<td class='property-column2'>Disable Logging Of Ignored Rules</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Log Dropped Packets</td>
<td class='property-column2'>Enable Logging Of Dropped Packets</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Log Success Connections</td>
<td class='property-column2'>Enable Logging Of Successful Connections</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Log File Path</td>
<td class='property-column2'>%SystemRoot%\System32\logfiles\firewall\publicfw.log</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Local Ipsec Policy Merge</td>
<td class='property-column2'>False</td>
</tr>
</table>

###### Table 22. Settings - Win - OIB - ES - Windows Firewall - D - Firewall Configuration - v3.1


<h3 id="section-14">Win - OIB - ES - Windows Hello for Business - D - WHfB Configuration - v3.2</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Windows Hello for Business - D - WHfB Configuration - v3.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Account protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Account Protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>22 July 2024 14:29:02</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:36:54</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 23. Basics - Win - OIB - ES - Windows Hello for Business - D - WHfB Configuration - v3.2


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows Hello For Business</td>
</tr>
<tr class=''>
<td class='property-column1'>Device-scoped settings</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Require Security Device</td>
<td class='property-column2'>true</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use Windows Hello For Business (Device)</td>
<td class='property-column2'>true</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Minimum PIN Length</td>
<td class='property-column2'>6</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use Certificate For On Prem Auth</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Pin Recovery</td>
<td class='property-column2'>true</td>
</tr>
<tr class=''>
<td class='property-column1'>Facial Features Use Enhanced Anti Spoofing</td>
<td class='property-column2'>true</td>
</tr>
</table>

###### Table 24. Settings - Win - OIB - ES - Windows Hello for Business - D - WHfB Configuration - v3.2


<h3 id="section-15">Win - OIB - ES - Windows LAPS - D - LAPS Configuration - v3.1</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Windows LAPS - D - LAPS Configuration - v3.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Account protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Local admin password solution (Windows LAPS)</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>03 April 2025 10:25:59</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>03 April 2025 10:37:05</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 25. Basics - Win - OIB - ES - Windows LAPS - D - LAPS Configuration - v3.1


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Backup Directory </td>
<td class='property-column2'>Backup the password to Microsoft Entra ID only</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Password Age Days</td>
<td class='property-column2'>7</td>
</tr>
<tr class=''>
<td class='property-column1'>Password Complexity </td>
<td class='property-column2'>Large letters + small letters + numbers + special characters (improved readability)</td>
</tr>
<tr class=''>
<td class='property-column1'>Password Length </td>
<td class='property-column2'>21</td>
</tr>
<tr class=''>
<td class='property-column1'>Post Authentication Actions </td>
<td class='property-column2'>Reset the password and logoff the managed account: upon expiry of the grace period, the managed account password will be reset and any interactive logon sessions using the managed account will terminated.</td>
</tr>
<tr class=''>
<td class='property-column1'>Post Authentication Reset Delay </td>
<td class='property-column2'>1</td>
</tr>
</table>

###### Table 26. Settings - Win - OIB - ES - Windows LAPS - D - LAPS Configuration - v3.1


<h3 id="section-16">Win - OIB - ES - Windows LAPS - D - LAPS Configuration (24H2+) - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - ES - Windows LAPS - D - LAPS Configuration (24H2+) - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: For 24H2+ devices only.</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Category</td>
<td class='property-column2'>Account protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy type</td>
<td class='property-column2'>Local admin password solution (Windows LAPS)</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:36</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>12 May 2025 14:28:22</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 27. Basics - Win - OIB - ES - Windows LAPS - D - LAPS Configuration (24H2+) - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Backup Directory </td>
<td class='property-column2'>Backup the password to Microsoft Entra ID only</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Password Age Days</td>
<td class='property-column2'>7</td>
</tr>
<tr class=''>
<td class='property-column1'>Password Complexity </td>
<td class='property-column2'>Passphrase (short words with unique prefixes)</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Passphrase Length</td>
<td class='property-column2'>4</td>
</tr>
<tr class=''>
<td class='property-column1'>Password Length </td>
<td class='property-column2'>21</td>
</tr>
<tr class=''>
<td class='property-column1'>Post Authentication Actions </td>
<td class='property-column2'><details class='description'><summary data-open='Minimize' data-close='Reset the password, logoff the managed a...expand'></summary>Reset the password, logoff the managed account, and terminate any remaining processes: upon expiration of the grace period, the managed account password is reset, any interactive logon sessions using the managed account are logged off, and any remaining processes are terminated.</details></td>
</tr>
<tr class=''>
<td class='property-column1'>Post Authentication Reset Delay </td>
<td class='property-column2'>1</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatic Account Management Enabled</td>
<td class='property-column2'>The target account will be automatically managed</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic Account Management Name Or Prefix</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic Account Management Target</td>
<td class='property-column2'>Manage a new custom administrator account</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic Account Management Enable Account</td>
<td class='property-column2'>The target account will be enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic Account Management Randomize Name</td>
<td class='property-column2'>The name of the target account will not use a random numeric suffix.</td>
</tr>
</table>

###### Table 28. Settings - Win - OIB - ES - Windows LAPS - D - LAPS Configuration (24H2+) - v3.6


<h3 id="section-17">Win - OIB - SC - Credential Management - D - Passwordless - v3.3</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Credential Management - D - Passwordless - v3.3</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: Applying this policy can cause issues with UAC and elevation if not using Windows LAPS and the built-in Administrator account.</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:38:28</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:46:28</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 29. Basics - Win - OIB - SC - Credential Management - D - Passwordless - v3.3


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Logon</td>
</tr>
<tr class=''>
<td class='property-column1'>Assign a default credential provider</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Assign the following credential provider as the default credential provider: (Device)</td>
<td class='property-column2'>{D6886603-9D2F-4EB2-B667-1971041FA96B}</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Authentication</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Passwordless Experience</td>
<td class='property-column2'>Enabled. The Passwordless experience will be enabled on Windows</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Web Sign In</td>
<td class='property-column2'>Enabled. Web Sign-in will be enabled for signing in to Windows</td>
</tr>
</table>

###### Table 30. Settings - Win - OIB - SC - Credential Management - D - Passwordless - v3.3


<h3 id="section-18">Win - OIB - SC - Defender Antivirus - D - Additional Configuration - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Defender Antivirus - D - Additional Configuration - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: Some of these settings require the device to be onboarded to Defender for Endpoint.</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:38:15</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>08 May 2025 15:15:08</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 31. Basics - Win - OIB - SC - Defender Antivirus - D - Additional Configuration - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Defender</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Convert Warn To Block</td>
<td class='property-column2'>Warn verdicts are converted to block</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Dynamic Signature Dropped Event Reporting</td>
<td class='property-column2'>Dynamic Security intelligence update events will be reported.</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable File Hash Computation</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide Exclusions From Local Admins</td>
<td class='property-column2'>If you enable this setting, local admins will no longer be able to see the exclusion list in Windows Security App or via PowerShell.</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide Exclusions From Local Users</td>
<td class='property-column2'>If you enable this setting, local users will no longer be able to see the exclusion list in Windows Security App or via PowerShell.</td>
</tr>
<tr class=''>
<td class='property-column1'>Intel TDT Enabled</td>
<td class='property-column2'>If you configure this setting to enabled, Intel TDT integration will turn on.</td>
</tr>
<tr class=''>
<td class='property-column1'>Oobe Enable Rtp And Sig Update</td>
<td class='property-column2'>If you enable this setting, real-time protection and Security Intelligence Updates are enabled during OOBE.</td>
</tr>
<tr class=''>
<td class='property-column1'>Passive Remediation</td>
<td class='property-column2'>PASSIVEREMEDIATIONFLAGSENSEAUTOREMEDIATION: Passive Remediation Sense AutoRemediation</td>
</tr>
<tr class=''>
<td class='property-column1'>Quick Scan Include Exclusions</td>
<td class='property-column2'>If you set this setting to 1, all files and directories that are excluded from real-time protection using contextual exclusions are scanned during a quick scan.</td>
</tr>
<tr class=''>
<td class='property-column1'>Support Log Location</td>
<td class='property-column2'>%ProgramData%\Microsoft\IntuneManagementExtension\Logs</td>
</tr>
</table>

###### Table 32. Settings - Win - OIB - SC - Defender Antivirus - D - Additional Configuration - v3.6


<h3 id="section-19">Win - OIB - SC - Device Security - D - Administrator Protection - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Administrator Protection - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>01 October 2024 16:27:29</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>12 June 2025 11:03:26</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 33. Basics - Win - OIB - SC - Device Security - D - Administrator Protection - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Local Policies Security Options</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Behavior Of The Elevation Prompt For Administrator Protection (Windows Insiders only)</td>
<td class='property-column2'>Prompt for credentials on the secure desktop</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Type Of Admin Approval Mode (Windows Insiders only)</td>
<td class='property-column2'>Admin Approval Mode with Administrator protection</td>
</tr>
</table>

###### Table 34. Settings - Win - OIB - SC - Device Security - D - Administrator Protection - v3.7


<h3 id="section-20">Win - OIB - SC - Device Security - D - Audit and Event Logging - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Audit and Event Logging - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>11 April 2024 19:37:59</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>01 October 2025 11:31:43</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 35. Basics - Win - OIB - SC - Device Security - D - Audit and Event Logging - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Audit Process Creation</td>
</tr>
<tr class=''>
<td class='property-column1'>Include command line in process creation events</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Application</td>
</tr>
<tr class=''>
<td class='property-column1'>Control Event Log behavior when the log file reaches its maximum size</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Specify the maximum log file size (KB)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Maximum Log Size (KB)</td>
<td class='property-column2'>32768</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Control Event Log behavior when the log file reaches its maximum size</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Specify the maximum log file size (KB)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Maximum Log Size (KB)</td>
<td class='property-column2'>196608</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Setup</td>
</tr>
<tr class=''>
<td class='property-column1'>Control Event Log behavior when the log file reaches its maximum size</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Specify the maximum log file size (KB)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Maximum Log Size (KB) (Device)</td>
<td class='property-column2'>32768</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>System</td>
</tr>
<tr class=''>
<td class='property-column1'>Control Event Log behavior when the log file reaches its maximum size</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Specify the maximum log file size (KB)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Maximum Log Size (KB)</td>
<td class='property-column2'>32768</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Auditing</td>
</tr>
<tr class=''>
<td class='property-column1'>Account Logon Audit Credential Validation</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Account Logon Logoff Audit Account Lockout</td>
<td class='property-column2'>Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Account Logon Logoff Audit Group Membership</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Account Logon Logoff Audit Logoff</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Account Logon Logoff Audit Logon</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Account Management Audit Application Group Management</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Authentication Policy Change</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Authorization Policy Change</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Changes to Audit Policy</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit File Share Access</td>
<td class='property-column2'>Success+Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Other Logon Logoff Events</td>
<td class='property-column2'>Success+Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Security Group Management</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Security System Extension</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Special Logon</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit User Account Management</td>
<td class='property-column2'>Success+Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Detailed Tracking Audit PNP Activity</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Detailed Tracking Audit Process Creation</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>Object Access Audit Detailed File Share</td>
<td class='property-column2'>Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Object Access Audit Other Object Access Events</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Object Access Audit Removable Storage</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy Change Audit MPSSVC Rule Level Policy Change</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Policy Change Audit Other Policy Change Events</td>
<td class='property-column2'>Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>Privilege Use Audit Sensitive Privilege Use</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>System Audit I Psec Driver</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>System Audit Other System Events</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
<tr class=''>
<td class='property-column1'>System Audit Security State Change</td>
<td class='property-column2'>Success</td>
</tr>
<tr class=''>
<td class='property-column1'>System Audit System Integrity</td>
<td class='property-column2'>Success+ Failure</td>
</tr>
</table>

###### Table 36. Settings - Win - OIB - SC - Device Security - D - Audit and Event Logging - v3.7


<h3 id="section-21">Win - OIB - SC - Device Security - D - Config Refresh - v3.2</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Config Refresh - v3.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>08 May 2024 19:34:30</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:41:08</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 37. Basics - Win - OIB - SC - Device Security - D - Config Refresh - v3.2


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Config Refresh</td>
</tr>
<tr class=''>
<td class='property-column1'> Provider ID</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Config refresh</td>
<td class='property-column2'>Enabled.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Refresh cadence</td>
<td class='property-column2'>30</td>
</tr>
</table>

###### Table 38. Settings - Win - OIB - SC - Device Security - D - Config Refresh - v3.2


<h3 id="section-22">Win - OIB - SC - Device Security - D - Enhanced Phishing Protection - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Enhanced Phishing Protection - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:21</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:41:14</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 39. Basics - Win - OIB - SC - Device Security - D - Enhanced Phishing Protection - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Smart Screen</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Enhanced Phishing Protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Notify Malicious</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Notify Password Reuse</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Notify Unsafe App</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Service Enabled</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 40. Settings - Win - OIB - SC - Device Security - D - Enhanced Phishing Protection - v3.0


<h3 id="section-23">Win - OIB - SC - Device Security - D - Local Security Policies - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Local Security Policies - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:22</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:42:06</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 41. Basics - Win - OIB - SC - Device Security - D - Local Security Policies - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Local Policies Security Options</td>
</tr>
<tr class=''>
<td class='property-column1'>Accounts Enable Administrator Account Status</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Accounts Enable Guest Account Status</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Accounts Limit Local Account Use Of Blank Passwords To Console Logon Only</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Interactive Logon Smart Card Removal Behavior</td>
<td class='property-column2'>Lock Workstation</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Network Client Digitally Sign Communications Always</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Network Client Send Unencrypted Password To Third Party SMB Servers</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Network Server Digitally Sign Communications Always</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Do Not Allow Anonymous Enumeration Of SAM Accounts</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Do Not Allow Anonymous Enumeration Of Sam Accounts And Shares</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Restrict Anonymous Access To Named Pipes And Shares</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Restrict Clients Allowed To Make Remote Calls To SAM</td>
<td class='property-column2'>O:BAG:BAD:(A;;RC;;;BA)</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security Do Not Store LAN Manager Hash Value On Next Password Change</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security LAN Manager Authentication Level</td>
<td class='property-column2'>Send NTLMv2 responses only. Refuse LM and NTLM</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security Minimum Session Security For NTLMSSP Based Clients</td>
<td class='property-column2'>Require NTLM and 128-bit encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security Minimum Session Security For NTLMSSP Based Servers</td>
<td class='property-column2'>Require NTLM and 128-bit encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Behavior Of The Elevation Prompt For Administrators</td>
<td class='property-column2'>Prompt for consent on the secure desktop</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Behavior Of The Elevation Prompt For Standard Users</td>
<td class='property-column2'>Prompt for credentials on the secure desktop</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Detect Application Installations And Prompt For Elevation</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Only Elevate UI Access Applications That Are Installed In Secure Locations</td>
<td class='property-column2'>Enabled: Application runs with UIAccess integrity only if it resides in secure location.</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Run All Administrators In Admin Approval Mode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Switch To The Secure Desktop When Prompting For Elevation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Use Admin Approval Mode</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Virtualize File And Registry Write Failures To Per User Locations</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 42. Settings - Win - OIB - SC - Device Security - D - Local Security Policies - v3.0


<h3 id="section-24">Win - OIB - SC - Device Security - D - Local Security Policies (24H2+) - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Local Security Policies (24H2+) - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: For 24H2+ devices only. Disables built-in Administrator account.</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>01 April 2025 15:02:22</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>12 May 2025 14:28:34</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 43. Basics - Win - OIB - SC - Device Security - D - Local Security Policies (24H2+) - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Local Policies Security Options</td>
</tr>
<tr class=''>
<td class='property-column1'>Accounts Enable Administrator Account Status</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Accounts Enable Guest Account Status</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Accounts Limit Local Account Use Of Blank Passwords To Console Logon Only</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Interactive Logon Smart Card Removal Behavior</td>
<td class='property-column2'>Lock Workstation</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Network Client Digitally Sign Communications Always</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Network Client Send Unencrypted Password To Third Party SMB Servers</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Network Server Digitally Sign Communications Always</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Do Not Allow Anonymous Enumeration Of SAM Accounts</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Do Not Allow Anonymous Enumeration Of Sam Accounts And Shares</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Restrict Anonymous Access To Named Pipes And Shares</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Access Restrict Clients Allowed To Make Remote Calls To SAM</td>
<td class='property-column2'>O:BAG:BAD:(A;;RC;;;BA)</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security Do Not Store LAN Manager Hash Value On Next Password Change</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security LAN Manager Authentication Level</td>
<td class='property-column2'>Send NTLMv2 responses only. Refuse LM and NTLM</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security Minimum Session Security For NTLMSSP Based Clients</td>
<td class='property-column2'>Require NTLM and 128-bit encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>Network Security Minimum Session Security For NTLMSSP Based Servers</td>
<td class='property-column2'>Require NTLM and 128-bit encryption</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Behavior Of The Elevation Prompt For Administrators</td>
<td class='property-column2'>Prompt for consent on the secure desktop</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Behavior Of The Elevation Prompt For Standard Users</td>
<td class='property-column2'>Prompt for credentials on the secure desktop</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Detect Application Installations And Prompt For Elevation</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Only Elevate UI Access Applications That Are Installed In Secure Locations</td>
<td class='property-column2'>Enabled: Application runs with UIAccess integrity only if it resides in secure location.</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Run All Administrators In Admin Approval Mode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Switch To The Secure Desktop When Prompting For Elevation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Use Admin Approval Mode</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>User Account Control Virtualize File And Registry Write Failures To Per User Locations</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 44. Settings - Win - OIB - SC - Device Security - D - Local Security Policies (24H2+) - v3.6


<h3 id="section-25">Win - OIB - SC - Device Security - D - Location and Privacy - v3.2</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Location and Privacy - v3.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>13 May 2025 11:53:01</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>13 May 2025 11:53:01</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 45. Basics - Win - OIB - SC - Device Security - D - Location and Privacy - v3.2


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Privacy</td>
</tr>
<tr class=''>
<td class='property-column1'>Let Apps Access Location</td>
<td class='property-column2'>User in control.</td>
</tr>
<tr class=''>
<td class='property-column1'>Let Apps Access Location Force Allow These Apps</td>
<td class='property-column2'>windows.immersivecontrolpanel_cw5n1h2txyewy;Microsoft.OutlookForWindows_8wekyb3d8bbwe</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>System</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Location</td>
<td class='property-column2'>Location service is allowed. The user has control and can change Location Privacy settings on or off.</td>
</tr>
</table>

###### Table 46. Settings - Win - OIB - SC - Device Security - D - Location and Privacy - v3.2


<h3 id="section-26">Win - OIB - SC - Device Security - D - Login and Lock Screen - v3.1</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Login and Lock Screen - v3.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:38:02</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:42:22</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 47. Basics - Win - OIB - SC - Device Security - D - Login and Lock Screen - v3.1


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Above Lock</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Cortana Above Lock</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Toasts</td>
<td class='property-column2'>Block</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Personalization</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent enabling lock screen camera</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent enabling lock screen slide show</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Logon</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off app notifications on the lock screen</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Credential User Interface</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not display the password reveal button</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Windows Logon Options</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot (Device)</td>
<td class='property-column2'>Enabled if BitLocker is on and not suspended</td>
</tr>
<tr class=''>
<td class='property-column1'>Sign-in and lock last interactive user automatically after a restart</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Authentication</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Aad Password Reset</td>
<td class='property-column2'>Allow</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Privacy</td>
</tr>
<tr class=''>
<td class='property-column1'>Let Apps Activate With Voice Above Lock</td>
<td class='property-column2'>Force deny. Windows apps cannot be activated by voice while the screen is locked, and users cannot change it.</td>
</tr>
</table>

###### Table 48. Settings - Win - OIB - SC - Device Security - D - Login and Lock Screen - v3.1


<h3 id="section-27">Win - OIB - SC - Device Security - D - Printing - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Printing - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>08 October 2025 10:51:00</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>10 October 2025 11:01:25</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 49. Basics - Win - OIB - SC - Device Security - D - Printing - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Printers</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Print Spooler to accept client connections</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Redirection Guard</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Redirection Guard Options (Device)</td>
<td class='property-column2'>Redirection Guard Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure RPC connection settings</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protocol to use for outgoing RPC connections: (Device)</td>
<td class='property-column2'>RPC over TCP</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use authentication for outgoing RPC connections: (Device)</td>
<td class='property-column2'>Default</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure RPC listener settings</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Authentication protocol to use for incoming RPC connections: (Device)</td>
<td class='property-column2'>Negotiate</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protocols to allow for incoming RPC connections: (Device)</td>
<td class='property-column2'>RPC over TCP</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure RPC over TCP port</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>RPC over TCP port: (Device)</td>
<td class='property-column2'>0</td>
</tr>
<tr class=''>
<td class='property-column1'>Limits print driver installation to Administrators</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Manage processing of Queue-specific files</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Manage processing of Queue-Specific files: (Device)</td>
<td class='property-column2'>Limit Queue-specific files to Color profiles</td>
</tr>
<tr class=''>
<td class='property-column1'>Point and Print Restrictions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enter fully qualified server names separated by semicolons (Device)</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Users can only point and print to machines in their forest (Device)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Users can only point and print to these servers: (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>When installing drivers for a new connection: (Device)</td>
<td class='property-column2'>Show warning and elevation prompt</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>When updating drivers for an existing connection: (Device)</td>
<td class='property-column2'>Show warning and elevation prompt</td>
</tr>
</table>

###### Table 50. Settings - Win - OIB - SC - Device Security - D - Printing - v3.7


<h3 id="section-28">Win - OIB - SC - Device Security - D - Remote Desktop Services and RPC - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Remote Desktop Services and RPC - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:24</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:42:29</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 51. Basics - Win - OIB - SC - Device Security - D - Remote Desktop Services and RPC - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Remote Procedure Call</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable RPC Endpoint Mapper Client Authentication</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Restrict Unauthenticated RPC clients</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>RPC Runtime Unauthenticated Client Restriction to Apply:</td>
<td class='property-column2'>Authenticated</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Remote Desktop Connection Client</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not allow passwords to be saved</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Device and Resource Redirection</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not allow drive redirection</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Always prompt for password upon connection</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require secure RPC communication</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require use of specific security layer for remote (RDP) connections</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Security Layer (Device)</td>
<td class='property-column2'>SSL</td>
</tr>
<tr class=''>
<td class='property-column1'>Require user authentication for remote connections by using Network Level Authentication</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Set client connection encryption level</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Encryption Level</td>
<td class='property-column2'>High Level</td>
</tr>
</table>

###### Table 52. Settings - Win - OIB - SC - Device Security - D - Remote Desktop Services and RPC - v3.0


<h3 id="section-29">Win - OIB - SC - Device Security - D - Script File Associations - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Script File Associations - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>WARNING: Deploying will break running any PowerShell scripts from Intune in the User context. Amend policy if this functionality is required.</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>06 November 2024 02:08:11</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:42:37</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 53. Basics - Win - OIB - SC - Device Security - D - Script File Associations - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Application Defaults</td>
</tr>
<tr class=''>
<td class='property-column1'>Default Associations Configuration</td>
<td class='property-column2'><details class='description'><summary data-open='Minimize' data-close='PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0i...expand'></summary>PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxEZWZhdWx0QXNzb2NpYXRpb25zPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmFwcHgiIFByb2dJZD0iQXBwbGljYXRpb25zXG5vdGVwYWQuZXhlIiBBcHBsaWNhdGlvbk5hbWU9Ik5vdGVwYWQiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuYmF0IiBQcm9nSWQ9IkFwcGxpY2F0aW9uc1xub3RlcGFkLmV4ZSIgQXBwbGljYXRpb25OYW1lPSJOb3RlcGFkIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmNhYiIgUHJvZ0lkPSJBcHBsaWNhdGlvbnNcbm90ZXBhZC5leGUiIEFwcGxpY2F0aW9uTmFtZT0iTm90ZXBhZCIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Ii5jb20iIFByb2dJZD0iQXBwbGljYXRpb25zXG5vdGVwYWQuZXhlIiBBcHBsaWNhdGlvbk5hbWU9Ik5vdGVwYWQiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuY21kIiBQcm9nSWQ9IkFwcGxpY2F0aW9uc1xub3RlcGFkLmV4ZSIgQXBwbGljYXRpb25OYW1lPSJOb3RlcGFkIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmh0YSIgUHJvZ0lkPSJBcHBsaWNhdGlvbnNcbm90ZXBhZC5leGUiIEFwcGxpY2F0aW9uTmFtZT0iTm90ZXBhZCIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Ii5qcyIgUHJvZ0lkPSJBcHBsaWNhdGlvbnNcbm90ZXBhZC5leGUiIEFwcGxpY2F0aW9uTmFtZT0iTm90ZXBhZCIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Ii5qc2UiIFByb2dJZD0iQXBwbGljYXRpb25zXG5vdGVwYWQuZXhlIiBBcHBsaWNhdGlvbk5hbWU9Ik5vdGVwYWQiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIucHMxIiBQcm9nSWQ9IkFwcGxpY2F0aW9uc1xub3RlcGFkLmV4ZSIgQXBwbGljYXRpb25OYW1lPSJOb3RlcGFkIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLnBzMW0iIFByb2dJZD0iQXBwbGljYXRpb25zXG5vdGVwYWQuZXhlIiBBcHBsaWNhdGlvbk5hbWU9Ik5vdGVwYWQiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuc2N0IiBQcm9nSWQ9IkFwcGxpY2F0aW9uc1xub3RlcGFkLmV4ZSIgQXBwbGljYXRpb25OYW1lPSJOb3RlcGFkIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLnNoYiIgUHJvZ0lkPSJBcHBsaWNhdGlvbnNcbm90ZXBhZC5leGUiIEFwcGxpY2F0aW9uTmFtZT0iTm90ZXBhZCIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Ii5zaHMiIFByb2dJZD0iQXBwbGljYXRpb25zXG5vdGVwYWQuZXhlIiBBcHBsaWNhdGlvbk5hbWU9Ik5vdGVwYWQiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIud3NmIiBQcm9nSWQ9IkFwcGxpY2F0aW9uc1xub3RlcGFkLmV4ZSIgQXBwbGljYXRpb25OYW1lPSJOb3RlcGFkIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLndzaCIgUHJvZ0lkPSJBcHBsaWNhdGlvbnNcbm90ZXBhZC5leGUiIEFwcGxpY2F0aW9uTmFtZT0iTm90ZXBhZCIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Ii52YmUiIFByb2dJZD0iQXBwbGljYXRpb25zXG5vdGVwYWQuZXhlIiBBcHBsaWNhdGlvbk5hbWU9Ik5vdGVwYWQiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIudmJzIiBQcm9nSWQ9IkFwcGxpY2F0aW9uc1xub3RlcGFkLmV4ZSIgQXBwbGljYXRpb25OYW1lPSJOb3RlcGFkIiAvPg0KPC9EZWZhdWx0QXNzb2NpYXRpb25zPg==</details></td>
</tr>
</table>

###### Table 54. Settings - Win - OIB - SC - Device Security - D - Script File Associations - v3.4


<h3 id="section-30">Win - OIB - SC - Device Security - D - Security Hardening - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Security Hardening - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>20 October 2024 20:56:16</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>14 October 2025 14:35:59</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 55. Basics - Win - OIB - SC - Device Security - D - Security Hardening - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>MS Security Guide</td>
</tr>
<tr class=''>
<td class='property-column1'>Apply UAC restrictions to local accounts on network logons</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure SMB v1 client driver</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure MrxSmb10 driver</td>
<td class='property-column2'>Disable driver (recommended)</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure SMB v1 server</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Structured Exception Handling Overwrite Protection (SEHOP)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>MSS (Legacy)</td>
</tr>
<tr class=''>
<td class='property-column1'>MSS: (DisableIPSourceRouting IPv6) IP source routing protection level (protects against packet spoofing)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>DisableIPSourceRoutingIPv6 (Device)</td>
<td class='property-column2'>Highest protection, source routing is completely disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>MSS: (DisableIPSourceRouting) IP source routing protection level (protects against packet spoofing)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>DisableIPSourceRouting (Device)</td>
<td class='property-column2'>Highest protection, source routing is completely disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>MSS: (EnableICMPRedirect) Allow ICMP redirects to override OSPF generated routes</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>MSS: (NoNameReleaseOnDemand) Allow the computer to ignore NetBIOS name release requests except from WINS servers</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>MSS: (ScreenSaverGracePeriod) The time in seconds before the screen saver grace period expires (0 recommended)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>ScreenSaverGracePeriod (Device)</td>
<td class='property-column2'>0</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Network Connections</td>
</tr>
<tr class=''>
<td class='property-column1'>Prohibit installation and configuration of Network Bridge on your DNS domain network</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require domain users to elevate when setting a network's location</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Windows Connection Manager</td>
</tr>
<tr class=''>
<td class='property-column1'>Minimize the number of simultaneous connections to the Internet or a Windows Domain</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Minimize Policy Options (Device)</td>
<td class='property-column2'>3 = Prevent Wi-Fi when on Ethernet</td>
</tr>
<tr class=''>
<td class='property-column1'>Prohibit connection to non-domain networks when connected to domain authenticated network</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Credentials Delegation</td>
</tr>
<tr class=''>
<td class='property-column1'>Encryption Oracle Remediation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protection Level: (Device)</td>
<td class='property-column2'>Force Updated Clients</td>
</tr>
<tr class=''>
<td class='property-column1'>Remote host allows delegation of non-exportable credentials</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Early Launch Antimalware</td>
</tr>
<tr class=''>
<td class='property-column1'>Boot-Start Driver Initialization Policy</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Choose the boot-start drivers that can be initialized:</td>
<td class='property-column2'>Good, unknown and bad but critical</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Internet Communication settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off downloading of print drivers over HTTP</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Internet download for Web publishing and online ordering wizards</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Remote Assistance</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Offer Remote Assistance</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Solicited Remote Assistance</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>AutoPlay Policies</td>
</tr>
<tr class=''>
<td class='property-column1'>Disallow Autoplay for non-volume devices</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Set the default behavior for AutoRun</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Default AutoRun Behavior</td>
<td class='property-column2'>Do not execute any autorun commands</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Autoplay</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Turn off Autoplay on:</td>
<td class='property-column2'>All drives</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Credential User Interface</td>
</tr>
<tr class=''>
<td class='property-column1'>Enumerate administrator accounts on elevation</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>File Explorer</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Windows Defender SmartScreen</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Pick one of the following settings: (Device)</td>
<td class='property-column2'>Warn and prevent bypass</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Data Execution Prevention for Explorer</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off heap termination on corruption</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>HomeGroup</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent the computer from joining a homegroup</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Internet Explorer</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Internet Explorer 11 as a standalone browser</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Notify that Internet Explorer 11 browser is disabled (Device)</td>
<td class='property-column2'>Never</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Push To Install</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Push To Install service</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>RSS Feeds</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent downloading of enclosures</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Windows Error Reporting</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Windows Error Reporting</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Windows PowerShell</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on PowerShell Script Block Logging</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Log script block invocation start / stop events:</td>
<td class='property-column2'>False</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>WinRM Client</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Basic authentication</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow unencrypted traffic</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disallow Digest authentication</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>WinRM Service</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Basic authentication</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow unencrypted traffic</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disallow WinRM from storing RunAs credentials</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Connectivity</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Phone PC Linking</td>
<td class='property-column2'>Block</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Data Protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Direct Memory Access</td>
<td class='property-column2'>Block</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Experience</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Cortana</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Manual MDM Unenrollment</td>
<td class='property-column2'>Block</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Games</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Advanced Gaming Services</td>
<td class='property-column2'>Block</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Kerberos</td>
</tr>
<tr class=''>
<td class='property-column1'>PK Init Hash Algorithm Configuration</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>PK Init Hash Algorithm SHA1</td>
<td class='property-column2'>Not Supported</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>PK Init Hash Algorithm SHA256</td>
<td class='property-column2'>Default</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>PK Init Hash Algorithm SHA384</td>
<td class='property-column2'>Default</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>PK Init Hash Algorithm SHA512</td>
<td class='property-column2'>Default</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Lanman Server</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Client Does Not Support Encryption</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Client Does Not Support Signing</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Insecure Guest Logon</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Auth Rate Limiter Delay In Ms</td>
<td class='property-column2'>2000</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Auth Rate Limiter</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Mailslots</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Max Smb2 Dialect</td>
<td class='property-column2'>SMB 3.1.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Min Smb2 Dialect</td>
<td class='property-column2'>SMB 3.0.0</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Lanman Workstation</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Insecure Guest Logon</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Server Does Not Support Encryption</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Audit Server Does Not Support Signing</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Insecure Guest Logons</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Mailslots</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Max Smb2 Dialect</td>
<td class='property-column2'>SMB 3.1.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Min Smb2 Dialect</td>
<td class='property-column2'>SMB 3.0.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Require Encryption</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Privacy</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Privacy Experience</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Add Provisioning Package</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Remove Provisioning Package</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Require Retrieve Health Certificate On Boot</td>
<td class='property-column2'>Required.</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Page Visibility List</td>
<td class='property-column2'>hide:gaming-gamebar;gaming-gamedvr;gaming-broadcasting;gaming-gamemode;gaming-xboxnetworking</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Smart Screen</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Smart Screen In Shell</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent Override For Files In Shell</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Sudo</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Sudo</td>
<td class='property-column2'>Sudo is disabled.</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>System Services</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Xbox Accessory Management Service Startup Mode</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Xbox Live Auth Manager Service Startup Mode</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Xbox Live Game Save Service Startup Mode</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Xbox Live Networking Service Startup Mode</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Task Scheduler</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Xbox Game Save Task</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Wi-Fi Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Auto Connect To Wi Fi Sense Hotspots</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Internet Sharing</td>
<td class='property-column2'>Block</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows Ink Workspace</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Windows Ink Workspace</td>
<td class='property-column2'>ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen.</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Wireless Display</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Projection From PC</td>
<td class='property-column2'>Your PC can discover and project to other devices.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Projection To PC</td>
<td class='property-column2'>Projection to PC is not allowed. Always off and the user cannot enable it.</td>
</tr>
<tr class=''>
<td class='property-column1'>Require Pin For Pairing</td>
<td class='property-column2'>Pairing ceremony for new devices will always require a PIN</td>
</tr>
</table>

###### Table 56. Settings - Win - OIB - SC - Device Security - D - Security Hardening - v3.7


<h3 id="section-31">Win - OIB - SC - Device Security - D - Timezone - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Timezone - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:37:35</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>22 January 2025 12:11:38</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 57. Basics - Win - OIB - SC - Device Security - D - Timezone - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Time Providers</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Windows NTP Client</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>CrossSiteSyncFlags (Device)</td>
<td class='property-column2'>2</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>EventLogFlags (Device)</td>
<td class='property-column2'>3</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>NtpServer (Device)</td>
<td class='property-column2'>time.windows.com</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>ResolvePeerBackoffMaxTimes (Device)</td>
<td class='property-column2'>7</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>ResolvePeerBackoffMinutes (Device)</td>
<td class='property-column2'>15</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>SpecialPollInterval (Device)</td>
<td class='property-column2'>1024</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Type (Device)</td>
<td class='property-column2'>AllSync</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Windows NTP Client</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>User Rights</td>
</tr>
<tr class=''>
<td class='property-column1'>Change Time Zone</td>
<td class='property-column2'>`*S-1-5-19;`*S-1-5-32-544;`*S-1-5-32-545</td>
</tr>
</table>

###### Table 58. Settings - Win - OIB - SC - Device Security - D - Timezone - v3.4


<h3 id="section-32">Win - OIB - SC - Device Security - D - User Rights - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - User Rights - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:37:21</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>09 October 2025 15:39:43</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 59. Basics - Win - OIB - SC - Device Security - D - User Rights - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>User Rights</td>
</tr>
<tr class=''>
<td class='property-column1'>Access From Network</td>
<td class='property-column2'>`*S-1-5-32-544;`*S-1-5-32-555</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Local Log On</td>
<td class='property-column2'>`*S-1-5-32-544;`*S-1-5-32-545</td>
</tr>
<tr class=''>
<td class='property-column1'>Backup Files And Directories</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Change System Time</td>
<td class='property-column2'>`*S-1-5-19;`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Create Global Objects</td>
<td class='property-column2'>`*S-1-5-6;`*S-1-5-19;`*S-1-5-20;`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Create Page File</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Create Symbolic Links</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Debug Programs</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Deny Access From Network</td>
<td class='property-column2'>`*S-1-5-113;`*S-1-5-32-546</td>
</tr>
<tr class=''>
<td class='property-column1'>Deny Local Log On</td>
<td class='property-column2'>`*S-1-5-32-546</td>
</tr>
<tr class=''>
<td class='property-column1'>Deny Log On As Batch Job</td>
<td class='property-column2'>`*S-1-5-32-546</td>
</tr>
<tr class=''>
<td class='property-column1'>Deny Log On As Service</td>
<td class='property-column2'>`*S-1-5-32-546</td>
</tr>
<tr class=''>
<td class='property-column1'>Deny Remote Desktop Services Log On</td>
<td class='property-column2'>`*S-1-5-113;`*S-1-5-32-546</td>
</tr>
<tr class=''>
<td class='property-column1'>Generate Security Audits</td>
<td class='property-column2'>`*S-1-5-19;`*S-1-5-20</td>
</tr>
<tr class=''>
<td class='property-column1'>Impersonate Client</td>
<td class='property-column2'>`*S-1-5-6;`*S-1-5-19;`*S-1-5-20;`*S-1-5-32-544;`*S-1-5-99-216390572-1995538116-3857911515-2404958512-2623887229</td>
</tr>
<tr class=''>
<td class='property-column1'>Increase Scheduling Priority</td>
<td class='property-column2'>`*S-1-5-32-544;`*S-1-5-90-0</td>
</tr>
<tr class=''>
<td class='property-column1'>Load Unload Device Drivers</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Manage Auditing And Security Log</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Manage Volume</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Modify Firmware Environment</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile Single Process</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Remote Shutdown</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Restore Files And Directories</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
<tr class=''>
<td class='property-column1'>Shut Down The System</td>
<td class='property-column2'>`*S-1-5-32-544;`*S-1-5-32-545</td>
</tr>
<tr class=''>
<td class='property-column1'>Take Ownership</td>
<td class='property-column2'>`*S-1-5-32-544</td>
</tr>
</table>

###### Table 60. Settings - Win - OIB - SC - Device Security - D - User Rights - v3.7


<h3 id="section-33">Win - OIB - SC - Device Security - D - Windows Package Manager  - v3.5</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Windows Package Manager  - v3.5</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>14 February 2025 11:25:53</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>14 February 2025 11:51:46</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 61. Basics - Win - OIB - SC - Device Security - D - Windows Package Manager  - v3.5


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Desktop App Installer</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable App Installer Experimental Features</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable App Installer Hash Override</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable App Installer Local Manifest Files</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable App Installer ms-appinstaller protocol</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable App Installer Settings</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 62. Settings - Win - OIB - SC - Device Security - D - Windows Package Manager  - v3.5


<h3 id="section-34">Win - OIB - SC - Device Security - D - Windows Subsystem for Linux - v3.2</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - D - Windows Subsystem for Linux - v3.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:37:07</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:49:47</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 63. Basics - Win - OIB - SC - Device Security - D - Windows Subsystem for Linux - v3.2


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows Subsystem For Linux</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow custom kernel configuration</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow custom networking configuration</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow custom system distribution configuration</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow kernel command line configuration</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow kernel debugging</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow nested virtualization</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow the debug shell</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow the Inbox version of the Windows Subsystem For Linux</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow user setting firewall configuration</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow WSL1</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 64. Settings - Win - OIB - SC - Device Security - D - Windows Subsystem for Linux - v3.2


<h3 id="section-35">Win - OIB - SC - Device Security - U - Device Guard, Credential Guard and HVCI - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - U - Device Guard, Credential Guard and HVCI - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'><details class='description'><summary data-open='Minimize' data-close='WARNING: Applying this policy to Devices...expand'></summary>WARNING: Applying this policy to Devices will cause a reboot between Device and User ESP phases!<br />NOTE: These features are automatically enabled on a fresh Win11 22H2 or above install, however they require Windows Enterprise to function correctly. They also require hardware support: <br />https://learn.microsoft.com/en-us/windows-hardware/design/device-experiences/oem-vbs</details></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:36:52</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>27 August 2025 13:24:36</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 65. Basics - Win - OIB - SC - Device Security - U - Device Guard, Credential Guard and HVCI - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Device Guard</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure System Guard Launch</td>
<td class='property-column2'>Unmanaged Enables Secure Launch if supported by hardware</td>
</tr>
<tr class=''>
<td class='property-column1'>Credential Guard</td>
<td class='property-column2'>(Enabled with UEFI lock) Turns on Credential Guard with UEFI lock.</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Virtualization Based Security</td>
<td class='property-column2'>enable virtualization based security.</td>
</tr>
<tr class=''>
<td class='property-column1'>Machine Identity Isolation</td>
<td class='property-column2'>(Disabled) Machine password is only LSASS-bound and stored in `$MACHINE.ACC registry key.</td>
</tr>
<tr class=''>
<td class='property-column1'>Require Platform Security Features</td>
<td class='property-column2'>Turns on VBS with Secure Boot and direct memory access (DMA). DMA requires hardware support.</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Local Security Authority</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Lsa Protected Process</td>
<td class='property-column2'>Enabled with UEFI lock. LSA will run as protected process and this configuration is UEFI locked.</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Virtualization Based Technology</td>
</tr>
<tr class=''>
<td class='property-column1'>Hypervisor Enforced Code Integrity</td>
<td class='property-column2'>(Enabled with UEFI lock) Turns on Hypervisor-Protected Code Integrity with UEFI lock.</td>
</tr>
<tr class=''>
<td class='property-column1'>Require UEFI Memory Attributes Table</td>
<td class='property-column2'>Require UEFI Memory Attributes Table</td>
</tr>
</table>

###### Table 66. Settings - Win - OIB - SC - Device Security - U - Device Guard, Credential Guard and HVCI - v3.7


<h3 id="section-36">Win - OIB - SC - Device Security - U - Power and Device Lock - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - U - Power and Device Lock - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>18 July 2024 13:00:44</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>13 May 2025 11:45:27</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 67. Basics - Win - OIB - SC - Device Security - U - Power and Device Lock - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Sleep Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Require a password when a computer wakes (on battery)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require a password when a computer wakes (plugged in)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Specify the system sleep timeout (on battery)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>System Sleep Timeout (seconds):</td>
<td class='property-column2'>600</td>
</tr>
<tr class=''>
<td class='property-column1'>Specify the system sleep timeout (plugged in)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>System Sleep Timeout (seconds):</td>
<td class='property-column2'>900</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Video and Display Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off the display (on battery)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>On battery power, turn display off after (seconds)</td>
<td class='property-column2'>300</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off the display (plugged in)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>When plugged in, turn display off after (seconds)</td>
<td class='property-column2'>600</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Power</td>
</tr>
<tr class=''>
<td class='property-column1'>Unattended Sleep Timeout On Battery</td>
<td class='property-column2'>600</td>
</tr>
<tr class=''>
<td class='property-column1'>Unattended Sleep Timeout Plugged In</td>
<td class='property-column2'>900</td>
</tr>
</table>

###### Table 68. Settings - Win - OIB - SC - Device Security - U - Power and Device Lock - v3.6


<h3 id="section-37">Win - OIB - SC - Device Security - U - Windows Sandbox - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - U - Windows Sandbox - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>16 September 2024 19:16:30</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 19:51:01</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 69. Basics - Win - OIB - SC - Device Security - U - Windows Sandbox - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows Sandbox</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Audio Input</td>
<td class='property-column2'>Not allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Clipboard Redirection</td>
<td class='property-column2'>Allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Networking</td>
<td class='property-column2'>Not allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Printer Redirection</td>
<td class='property-column2'>Not allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow VGPU</td>
<td class='property-column2'>Not allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Video Input</td>
<td class='property-column2'>Not allowed.</td>
</tr>
</table>

###### Table 70. Settings - Win - OIB - SC - Device Security - U - Windows Sandbox - v3.4


<h3 id="section-38">Win - OIB - SC - Device Security - U - Windows Spotlight and Org Messages - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Device Security - U - Windows Spotlight and Org Messages - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:27</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>30 April 2025 10:11:17</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 71. Basics - Win - OIB - SC - Device Security - U - Windows Spotlight and Org Messages - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Experience</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Spotlight Collection (User)</td>
<td class='property-column2'>0</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Windows Spotlight (User)</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Tailored Experiences With Diagnostic Data (User)</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Third Party Suggestions In Windows Spotlight (User)</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Windows Consumer Features</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Windows Spotlight On Action Center (User)</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Windows Spotlight Windows Welcome Experience (User)</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Windows Tips</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure Windows Spotlight On Lock Screen (User)</td>
<td class='property-column2'>Windows spotlight enabled.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Windows Spotlight On Settings (User)</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Cloud Optimized Content</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable delivery of organizational messages (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 72. Settings - Win - OIB - SC - Device Security - U - Windows Spotlight and Org Messages - v3.0


<h3 id="section-39">Win - OIB - SC - Internet Explorer (Legacy) - D - Security - v3.1.1</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Internet Explorer (Legacy) - D - Security - v3.1.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 21:01:43</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:10:18</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 73. Basics - Win - OIB - SC - Internet Explorer (Legacy) - D - Security - v3.1.1


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Advanced Page</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow software to run or install even if the signature is invalid</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Check for server certificate revocation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Check for signatures on downloaded programs</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not allow ActiveX controls to run in Protected Mode when Enhanced Protected Mode is enabled</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off encryption support</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Secure Protocol combinations</td>
<td class='property-column2'>Only use TLS 1.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on Enhanced Protected Mode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Internet Control Panel</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent ignoring certificate errors</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Internet Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Access data sources across domains</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Access data sources across domains</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow cut, copy or paste operations from the clipboard via script</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow paste operations via script</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow drag and drop or copy and paste files</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow drag and drop or copy and paste files</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow loading of XAML files</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>XAML Files</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow only approved domains to use ActiveX controls without prompt</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Only allow approved domains to use ActiveX controls without prompt</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow only approved domains to use the TDC ActiveX control</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Only allow approved domains to use the TDC ActiveX control</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow script-initiated windows without size or position constraints</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow script-initiated windows without size or position constraints</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow scripting of Internet Explorer WebBrowser controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Internet Explorer web browser control</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow scriptlets</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Scriptlets</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow updates to status bar via script</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Status bar updates via script</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow VBScript to run in Internet Explorer</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow VBScript to run in Internet Explorer</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatic prompting for file downloads</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic prompting for file downloads</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Download signed ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Download signed ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Download unsigned ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Download unsigned ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable dragging of content from different domains across windows</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable dragging of content from different domains across windows</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable dragging of content from different domains within a window</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable dragging of content from different domains within a window</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Include local path when user is uploading files to a server</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Include local directory path when uploading files to a server</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>Disable Java</td>
</tr>
<tr class=''>
<td class='property-column1'>Launching applications and files in an IFRAME</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Launching applications and files in an IFRAME</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Logon options</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Logon options</td>
<td class='property-column2'>Prompt for user name and password</td>
</tr>
<tr class=''>
<td class='property-column1'>Navigate windows and frames across different domains</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Navigate windows and frames across different domains</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Run .NET Framework-reliant components not signed with Authenticode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Run .NET Framework-reliant components not signed with Authenticode</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Run .NET Framework-reliant components signed with Authenticode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Run .NET Framework-reliant components signed with Authenticode</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Show security warning for potentially unsafe files</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Launching programs and unsafe files</td>
<td class='property-column2'>Prompt</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on Cross-Site Scripting Filter</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Turn on Cross-Site Scripting (XSS) Filter</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on Protected Mode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protected Mode</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on SmartScreen Filter scan</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use SmartScreen Filter</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Use Pop-up Blocker</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use Pop-up Blocker</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Userdata persistence</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Userdata persistence</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Web sites in less privileged Web content zones can navigate into this zone</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Web sites in less privileged Web content zones can navigate into this zone</td>
<td class='property-column2'>Disable</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security Page</td>
</tr>
<tr class=''>
<td class='property-column1'>Intranet Sites: Include all network paths (UNCs)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on certificate address mismatch warning</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Intranet Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>High safety</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Local Machine Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>Disable Java</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Locked-Down Internet Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on SmartScreen Filter scan</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use SmartScreen Filter</td>
<td class='property-column2'>Enable</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Locked-Down Intranet Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>Disable Java</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Locked-Down Local Machine Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>Disable Java</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Locked-Down Restricted Sites Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>Disable Java</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on SmartScreen Filter scan</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use SmartScreen Filter</td>
<td class='property-column2'>Enable</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Locked-Down Trusted Sites Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>Disable Java</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Restricted Sites Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Access data sources across domains</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Access data sources across domains</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow active scripting</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow active scripting</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow binary and script behaviors</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Binary and Script Behaviors</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow cut, copy or paste operations from the clipboard via script</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow paste operations via script</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow drag and drop or copy and paste files</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow drag and drop or copy and paste files</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow file downloads</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow file downloads</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow loading of XAML files</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>XAML Files</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow META REFRESH</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow META REFRESH</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow only approved domains to use ActiveX controls without prompt</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Only allow approved domains to use ActiveX controls without prompt</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow only approved domains to use the TDC ActiveX control</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Only allow approved domains to use the TDC ActiveX control</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow script-initiated windows without size or position constraints</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow script-initiated windows without size or position constraints</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow scripting of Internet Explorer WebBrowser controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Internet Explorer web browser control</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow scriptlets</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Scriptlets</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow updates to status bar via script</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Status bar updates via script</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow VBScript to run in Internet Explorer</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow VBScript to run in Internet Explorer</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatic prompting for file downloads</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic prompting for file downloads</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Download signed ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Download signed ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Download unsigned ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Download unsigned ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable dragging of content from different domains across windows</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable dragging of content from different domains across windows</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable dragging of content from different domains within a window</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable dragging of content from different domains within a window</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable MIME Sniffing</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable MIME Sniffing</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Include local path when user is uploading files to a server</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Include local directory path when uploading files to a server</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>Disable Java</td>
</tr>
<tr class=''>
<td class='property-column1'>Launching applications and files in an IFRAME</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Launching applications and files in an IFRAME</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Logon options</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Logon options</td>
<td class='property-column2'>Anonymous logon</td>
</tr>
<tr class=''>
<td class='property-column1'>Navigate windows and frames across different domains</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Navigate windows and frames across different domains</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Run .NET Framework-reliant components not signed with Authenticode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Run .NET Framework-reliant components not signed with Authenticode</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Run .NET Framework-reliant components signed with Authenticode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Run .NET Framework-reliant components signed with Authenticode</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Run ActiveX controls and plugins</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Run ActiveX controls and plugins</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Script ActiveX controls marked safe for scripting</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Script ActiveX controls marked safe for scripting</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Scripting of Java applets</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Scripting of Java applets</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Show security warning for potentially unsafe files</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Launching programs and unsafe files</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on Cross-Site Scripting Filter</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Turn on Cross-Site Scripting (XSS) Filter</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on Protected Mode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Protected Mode</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on SmartScreen Filter scan</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use SmartScreen Filter</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Use Pop-up Blocker</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use Pop-up Blocker</td>
<td class='property-column2'>Enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Userdata persistence</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Userdata persistence</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Web sites in less privileged Web content zones can navigate into this zone</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Web sites in less privileged Web content zones can navigate into this zone</td>
<td class='property-column2'>Disable</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trusted Sites Zone</td>
</tr>
<tr class=''>
<td class='property-column1'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Don't run antimalware programs against ActiveX controls</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Initialize and script ActiveX controls not marked as safe</td>
<td class='property-column2'>Disable</td>
</tr>
<tr class=''>
<td class='property-column1'>Java permissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Java permissions</td>
<td class='property-column2'>High safety</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Internet Explorer</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent bypassing SmartScreen Filter warnings</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent managing SmartScreen Filter</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Select SmartScreen Filter mode</td>
<td class='property-column2'>On</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent per-user installation of ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Security Zones: Do not allow users to add/delete sites</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Security Zones: Do not allow users to change policies</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Security Zones: Use only machine settings</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Specify use of ActiveX Installer Service for installation of ActiveX controls</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Crash Detection</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off the Security Settings Check feature</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn on the auto-complete feature for user names and passwords on forms (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Add-on Management</td>
</tr>
<tr class=''>
<td class='property-column1'>Remove "Run this time" button for outdated ActiveX controls in Internet Explorer</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off blocking of outdated ActiveX controls for Internet Explorer</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security Features</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow fallback to SSL 3.0 (Internet Explorer)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow insecure fallback for:</td>
<td class='property-column2'>No Sites</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Consistent Mime Handling</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Mime Sniffing Safety Feature</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>MK Protocol Security Restriction</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Notification bar</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Protection From Zone Elevation</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Restrict ActiveX Install</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Restrict File Download</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Scripted Window Security Restrictions</td>
</tr>
<tr class=''>
<td class='property-column1'>Internet Explorer Processes</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 74. Settings - Win - OIB - SC - Internet Explorer (Legacy) - D - Security - v3.1.1


<h3 id="section-40">Win - OIB - SC - Microsoft Accounts - D - Configuration - v3.2</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Accounts - D - Configuration - v3.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>16 July 2024 12:16:46</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:10:28</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 75. Basics - Win - OIB - SC - Microsoft Accounts - D - Configuration - v3.2


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Accounts</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Adding Non Microsoft Accounts Manually</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Microsoft Account Connection</td>
<td class='property-column2'>Block</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>App runtime</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Microsoft accounts to be optional</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Microsoft account</td>
</tr>
<tr class=''>
<td class='property-column1'>Block all consumer Microsoft account user authentication</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Local Policies Security Options</td>
</tr>
<tr class=''>
<td class='property-column1'>Accounts Block Microsoft Accounts</td>
<td class='property-column2'>Users can't add or log on with Microsoft accounts</td>
</tr>
</table>

###### Table 76. Settings - Win - OIB - SC - Microsoft Accounts - D - Configuration - v3.2


<h3 id="section-41">Win - OIB - SC - Microsoft Edge - D - Security - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Edge - D - Security - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>22 November 2024 11:38:21</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>13 August 2025 13:25:08</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 77. Basics - Win - OIB - SC - Microsoft Edge - D - Security - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Ads setting for sites with intrusive ads</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Ads setting for sites with intrusive ads (Device)</td>
<td class='property-column2'>Block ads on sites with intrusive ads. (Default value)</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow download restrictions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Download restrictions (Device)</td>
<td class='property-column2'>Block malicious downloads</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow importing of browser settings</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow importing of browsing history</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow importing of home page settings</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow importing of payment info</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow importing of saved passwords</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow importing of search engine settings</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow managed extensions to use the Enterprise Hardware Platform API</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow personalization of ads, search and news by sending browsing history to Microsoft</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow queries to a Browser Network Time service</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow unconfigured sites to be reloaded in Internet Explorer mode</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users to proceed from the HTTPS warning page</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow websites to query for available payment methods</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatically open downloaded MHT or MHTML files from the web in Internet Explorer mode</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Block tracking of users' web-browsing activity</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block tracking of users' web-browsing activity (Device)</td>
<td class='property-column2'>Balanced (blocks harmful trackers and trackers from sites user has not visited; content and ads will be less personalized)</td>
</tr>
<tr class=''>
<td class='property-column1'>Clear browsing data when Microsoft Edge closes</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Clear cached images and files when Microsoft Edge closes</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure the Share experience</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Control communication with the Experimentation and Configuration Service</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Control communication with the Experimentation and Configuration Service (Device)</td>
<td class='property-column2'>Disable communication with the Experimentation and Configuration Service</td>
</tr>
<tr class=''>
<td class='property-column1'>DNS interception checks enabled</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Dynamic Code Settings</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Dynamic Code Settings (Device)</td>
<td class='property-column2'>Default dynamic code settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Application Bound Encryption</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable AutoFill for addresses</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable AutoFill for payment instruments</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable browser legacy extension point blocking</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable renderer code integrity (deprecated)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable site isolation for every site</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enhance the security state in Microsoft Edge</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enhance the security state in Microsoft Edge (Device)</td>
<td class='property-column2'>Balanced mode</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide the First-run experience and splash screen</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Edge Insider Promotion Enabled</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Show the Reload in Internet Explorer mode button in the toolbar</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Cast</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Google Cast</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Experimentation</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure users ability to override feature flags</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>HTTP authentication</td>
</tr>
<tr class=''>
<td class='property-column1'>Supported authentication schemes</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Supported authentication schemes (Device)</td>
<td class='property-column2'>ntlm,negotiate</td>
</tr>
<tr class=''>
<td class='property-column1'>Windows Hello For HTTP Auth Enabled</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Native Messaging</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow user-level native messaging hosts (installed without admin permissions)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Scareware Blocker settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Edge Scareware Blocker Protection</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>SmartScreen settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Microsoft Defender SmartScreen</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Microsoft Defender SmartScreen to block potentially unwanted apps</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Force Microsoft Defender SmartScreen checks on downloads from trusted sources</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent bypassing Microsoft Defender SmartScreen prompts for sites</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Typosquatting Checker settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Edge Website Typo Protection</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 78. Settings - Win - OIB - SC - Microsoft Edge - D - Security - v3.7


<h3 id="section-42">Win - OIB - SC - Microsoft Edge - D - Updates - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Edge - D - Updates - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:38</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>03 April 2025 10:21:44</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 79. Basics - Win - OIB - SC - Microsoft Edge - D - Updates - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable component updates in Microsoft Edge</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Notify a user that a browser restart is recommended or required for pending updates</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Notify a user that a browser restart is recommended or required for pending updates (Device)</td>
<td class='property-column2'>Required - Show a recurring prompt to the user indicating that a restart is required</td>
</tr>
<tr class=''>
<td class='property-column1'>Set the time period for update notifications</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Set the time period for update notifications: (Device)</td>
<td class='property-column2'>259200000</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge Update</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow installation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Install Policy (Device)</td>
<td class='property-column2'>Force Installs (Machine-Wide)</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow installation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent Desktop Shortcut creation upon install</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Target Channel override</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Target Channel (Device)</td>
<td class='property-column2'>Stable</td>
</tr>
<tr class=''>
<td class='property-column1'>Update policy override</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Policy (Device)</td>
<td class='property-column2'>Always allow updates (recommended)</td>
</tr>
<tr class=''>
<td class='property-column1'>Control updater's communication with the Experimentation and Configuration Service</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Control updater's communication with Experimentation and Configuration Service (Device)</td>
<td class='property-column2'>Disable communication with the Experimentation and Configuration Service</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Microsoft Edge Web View2 Runtime</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow installation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Update policy override</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Update Policy (Device)</td>
<td class='property-column2'>Always allow updates (recommended)</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Microsoft Edge WebView</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow installation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Install Policy (Device)</td>
<td class='property-column2'>Force Installs (Machine-Wide)</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Preferences</td>
</tr>
<tr class=''>
<td class='property-column1'>Auto-update check period override</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Minutes between update checks (Device)</td>
<td class='property-column2'>240</td>
</tr>
</table>

###### Table 80. Settings - Win - OIB - SC - Microsoft Edge - D - Updates - v3.6


<h3 id="section-43">Win - OIB - SC - Microsoft Edge - U - Extensions - v3.1</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Edge - U - Extensions - v3.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>26 October 2023 18:43:34</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:11:14</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 81. Basics - Win - OIB - SC - Microsoft Edge - U - Extensions - v3.1


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Extensions</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow specific extensions to be installed (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Blocks external extensions from being installed (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Control which extensions are installed silently (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Extension/App IDs and update URLs to be silently installed (User)</td>
<td class='property-column2'>nkbndigcebkoaejohleckhekfmcecfja;ofefcgjbeghpigppfmkologfjadafddi</td>
</tr>
<tr class=''>
<td class='property-column1'>Control which extensions cannot be installed (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Extension IDs the user should be prevented from installing (or `* for all) (User)</td>
<td class='property-column2'>`*</td>
</tr>
</table>

###### Table 82. Settings - Win - OIB - SC - Microsoft Edge - U - Extensions - v3.1


<h3 id="section-44">Win - OIB - SC - Microsoft Edge - U - Password Management - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Edge - U - Password Management - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:37</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:11:30</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 83. Basics - Win - OIB - SC - Microsoft Edge - U - Password Management - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Password manager and protection</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users to be alerted if their passwords are found to be unsafe (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users to get a strong password suggestion whenever they are creating an account online (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configures a setting that asks users to enter their device password while using password autofill (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configures a setting that asks users to enter their device password while using password autofill (User)</td>
<td class='property-column2'>With device password</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable saving passwords to the password manager (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 84. Settings - Win - OIB - SC - Microsoft Edge - U - Password Management - v3.0


<h3 id="section-45">Win - OIB - SC - Microsoft Edge - U - Profiles, Sign-In and Sync - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Edge - U - Profiles, Sign-In and Sync - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:39</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:11:45</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 85. Basics - Win - OIB - SC - Microsoft Edge - U - Profiles, Sign-In and Sync - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatically import another browser's data and settings at first run (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Browser sign-in settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Browser sign-in settings (User)</td>
<td class='property-column2'>Force users to sign-in to use the browser</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure whether a user always has a default profile automatically signed in with their work or school account (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable profile creation from the Identity flyout menu or the Settings page (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable use of ephemeral profiles (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Force synchronization of browser data and do not show the sync consent prompt (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Single sign-on for work or school sites using this profile enabled (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Identity and sign-in</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable implicit sign-in (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 86. Settings - Win - OIB - SC - Microsoft Edge - U - Profiles, Sign-In and Sync - v3.0


<h3 id="section-46">Win - OIB - SC - Microsoft Edge - U - User Experience - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Edge - U - User Experience - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>22 November 2024 10:44:18</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>13 August 2025 13:21:58</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 87. Basics - Win - OIB - SC - Microsoft Edge - U - User Experience - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users to access the games menu (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Microsoft Edge built-in PDF reader powered by Adobe Acrobat enabled (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Shopping in Microsoft Edge Enabled (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Show Microsoft Rewards experiences (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Shows button on native PDF viewer in Microsoft Edge that allows users to sign up for Adobe Acrobat subscription (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Edge Workspaces settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Workspaces (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Games settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Gamer Mode (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge - Default Settings (users can override)</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Performance</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable startup boost (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Sleeping Tabs settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Sleeping Tabs (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Startup, home page and new tab page</td>
</tr>
<tr class=''>
<td class='property-column1'>Action to take on Microsoft Edge startup (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Action to take on startup (User)</td>
<td class='property-column2'>Restore the last session</td>
</tr>
<tr class=''>
<td class='property-column1'>Set new tab page quick links (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Show Home button on toolbar (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 88. Settings - Win - OIB - SC - Microsoft Edge - U - User Experience - v3.7


<h3 id="section-47">Win - OIB - SC - Microsoft Office - D - Security - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Office - D - Security - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: These policies are only applicable to Microsoft 365 Apps for Enterprise (included with M365 E`*/A`*/F`*), not Microsoft 365 Apps for Business (included with M365 Business Premium).</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>31 January 2025 10:42:30</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>13 May 2025 11:17:59</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 89. Basics - Win - OIB - SC - Microsoft Office - D - Security - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>MS Security Guide</td>
</tr>
<tr class=''>
<td class='property-column1'>Block Flash activation in Office documents</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block Flash player in Office (Device)</td>
<td class='property-column2'>Block embedding/linking, allow other activation</td>
</tr>
<tr class=''>
<td class='property-column1'>Restrict legacy JScript execution for Office</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Access: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Excel: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>OneNote: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Outlook: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>PowerPoint: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Project: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Publisher: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Visio: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Word: (Device)</td>
<td class='property-column2'>69632</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Lync Feature Policies</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure SIP security mode</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable HTTP fallback for SIP connection</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Office 2016 (Machine)</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>IE Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Add-on Management</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Consistent Mime Handling</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable user name and password</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Information Bar</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Local Machine Zone Lockdown Security</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Mime Sniffing Safety Feature</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Navigate URL</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Object Caching Protection</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Protection From Zone Elevation</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Restrict ActiveX Install</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Restrict File Download</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Saved from URL</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Scripted Window Security Restrictions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>excel.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>exprwd.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>groove.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>msaccess.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mse7.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>mspub.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>onent.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>outlook.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>powerpnt.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>pptview.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>spDesign.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>visio.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winproj.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>winword.exe (Device)</td>
<td class='property-column2'>True</td>
</tr>
</table>

###### Table 90. Settings - Win - OIB - SC - Microsoft Office - D - Security - v3.6


<h3 id="section-48">Win - OIB - SC - Microsoft Office - D - Updates - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Office - D - Updates - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:40</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:12:05</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 91. Basics - Win - OIB - SC - Microsoft Office - D - Updates - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Office 2016 (Machine)</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Updates</td>
</tr>
<tr class=''>
<td class='property-column1'>Don’t install extension for Microsoft Search in Bing that makes Bing the default search engine</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Automatic Updates</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide option to enable or disable updates</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Online Repair</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Location of Office Deployment Tool: (Device)</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use Office CDN (if needed) (Device)</td>
<td class='property-column2'>True</td>
</tr>
</table>

###### Table 92. Settings - Win - OIB - SC - Microsoft Office - D - Updates - v3.0


<h3 id="section-49">Win - OIB - SC - Microsoft Office - U - Config and Experience - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Office - U - Config and Experience - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>30 January 2025 12:18:11</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>24 April 2025 10:28:39</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 93. Basics - Win - OIB - SC - Microsoft Office - U - Config and Experience - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Excel 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Save</td>
</tr>
<tr class=''>
<td class='property-column1'>Default file format (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Save Excel files as (User)</td>
<td class='property-column2'>Excel Workbook (`*.xlsx)</td>
</tr>
<tr class=''>
<td class='property-column1'>Suppress file format compatibility dialog box for OpenDocument Spreadsheet format (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Office 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>First Run</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable First Run Movie (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Office First Run on application boot (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Display Language</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users who aren’t admins to install language accessory packs (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Language Preferences</td>
</tr>
<tr class=''>
<td class='property-column1'>Notify users if they do not have proofing tools for a language they use (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Miscellaneous</td>
</tr>
<tr class=''>
<td class='property-column1'>File links open preference default selection as Desktop App (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide Microsoft cloud-based file locations in the Backstage view (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Online Storage Filter Value: (User)</td>
<td class='property-column2'>137</td>
</tr>
<tr class=''>
<td class='property-column1'>Suppress recommended settings dialog (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users to receive and respond to in-product surveys from Microsoft (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Opt-in Wizard on first run (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Customer Experience Improvement Program (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Outlook 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Exchange</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatically configure profile based on Active Directory Primary SMTP address (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prefer the provided account email in AutoDiscover auth prompts. (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent adding non-default Exchange accounts (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Cached Exchange Mode</td>
</tr>
<tr class=''>
<td class='property-column1'>Download shared non-mail folders (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Use Cached Exchange Mode for new and existing Outlook profiles (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Use the Online Global Address List for Nickname Resolution (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>RSS Feeds</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off RSS feature (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Other</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Outlook Mobile Hyperlink (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Make Outlook the default program for E-mail, Contacts, and Calendar (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft PowerPoint 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Save</td>
</tr>
<tr class=''>
<td class='property-column1'>Default file format (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Save PowerPoint files as (User)</td>
<td class='property-column2'>PowerPoint Presentation (`*.pptx)</td>
</tr>
<tr class=''>
<td class='property-column1'>Suppress file format compatibility dialog box for OpenDocument Presentation format (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Word 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Save</td>
</tr>
<tr class=''>
<td class='property-column1'>Default file format (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Save Word files as (User)</td>
<td class='property-column2'>Word Document (`*.docx)</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not display file format compatibility dialog box for OpenDocument text format (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 94. Settings - Win - OIB - SC - Microsoft Office - U - Config and Experience - v3.6


<h3 id="section-50">Win - OIB - SC - Microsoft Office - U - Security - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Office - U - Security - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: These policies are only applicable to Microsoft 365 Apps for Enterprise (included with M365 E`*/A`*/F`*), not Microsoft 365 Apps for Business (included with M365 Business Premium).</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>31 January 2025 10:49:57</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>13 May 2025 11:18:10</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 95. Basics - Win - OIB - SC - Microsoft Office - U - Security - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Access 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Block macros from running in Office files from the Internet (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Trust Bar Notification for unsigned application add-ins and block them (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require that application add-ins are signed by Trusted Publisher (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>VBA Macro Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all except digitally signed macros</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trusted Locations</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Trusted Locations on the network (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Excel 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Data Recovery</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not show data extraction options when opening corrupt workbooks (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Advanced</td>
</tr>
<tr class=''>
<td class='property-column1'>Ask to update automatic links (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>General</td>
</tr>
<tr class=''>
<td class='property-column1'>Load pictures from Web pages not created in Excel (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Save</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable AutoRepublish (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not show AutoRepublish warning alert (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Force file extension to match file type (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Always match file type</td>
</tr>
<tr class=''>
<td class='property-column1'>Scan encrypted macros in Excel Open XML workbooks (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Scan encrypted macros (default)</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off file validation (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>WEBSERVICE Function Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all with notification</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Block Excel XLL Add-ins that come from an untrusted source (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Block macros from running in Office files from the Internet (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent Excel from running XLM macros (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require that application add-ins are signed by Trusted Publisher (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Trust Bar Notification for unsigned application add-ins and block them (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>VBA Macro Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all except digitally signed macros</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>External Content</td>
</tr>
<tr class=''>
<td class='property-column1'>Always prevent untrusted Microsoft Query files from opening (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Don’t allow Dynamic Data Exchange (DDE) server launch in Excel (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Don’t allow Dynamic Data Exchange (DDE) server lookup in Excel (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>File Block Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>dBase III / IV files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Dif and Sylk files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 2 macrosheets and add-in files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 2 worksheets (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 3 macrosheets and add-in files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 3 worksheets (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 4 macrosheets and add-in files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 4 workbooks (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 4 worksheets (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 95 workbooks (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 95-97 workbooks and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Excel 97-2003 workbooks and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Set default file block behavior (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Blocked files are not opened</td>
</tr>
<tr class=''>
<td class='property-column1'>Web pages and Excel 2003 XML spreadsheets (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Protected View</td>
</tr>
<tr class=''>
<td class='property-column1'>Always open untrusted database files in Protected View (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not open files from the Internet zone in Protected View (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not open files in unsafe locations in Protected View (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Set document behavior if file validation fails (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Open in Protected View</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Checked: Allow edit.  Unchecked: Do not allow edit. (User)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Protected View for attachments opened from Outlook (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trusted Locations</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Trusted Locations on the network (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Office 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Customize</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable UI extending from documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in Access (User)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in Excel (User)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in InfoPath (User)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in Outlook (User)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in PowerPoint (User)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in Project (User)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in Publisher (User)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in Visio (User)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disallow in Word (User)</td>
<td class='property-column2'>True</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>ActiveX Control Initialization (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>ActiveX Control Initialization: (User)</td>
<td class='property-column2'>6</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Basic Authentication prompts from network proxies (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow VBA to load typelib references by path from untrusted intranet locations (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Automation Security (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Set the Automation Security level (User)</td>
<td class='property-column2'>Use application macro security level</td>
</tr>
<tr class=''>
<td class='property-column1'>Control how Office handles form-based sign-in prompts (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Behavior: (User)</td>
<td class='property-column2'>Block all prompts</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Specify hosts allowed to show form-based sign-in prompts to users: (User)</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable additional security checks on VBA library references that may refer to unsafe locations on the local machine (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable all Trust Bar notifications for security issues (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Encryption mode for Information Rights Management (IRM) (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>IRM Encryption Mode: (User)</td>
<td class='property-column2'>Cipher Block Chaining (CBC)</td>
</tr>
<tr class=''>
<td class='property-column1'>Encryption type for password protected Office 97-2003 files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Encryption type: (User)</td>
<td class='property-column2'>Microsoft Enhanced RSA and AES Cryptographic Provider,AES 256,256</td>
</tr>
<tr class=''>
<td class='property-column1'>Encryption type for password protected Office Open XML files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Encryption type: (User)</td>
<td class='property-column2'>Microsoft Enhanced RSA and AES Cryptographic Provider,AES 256,256</td>
</tr>
<tr class=''>
<td class='property-column1'>Load Controls in Forms3 (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Load Controls in Forms3: (User)</td>
<td class='property-column2'>1</td>
</tr>
<tr class=''>
<td class='property-column1'>Macro Runtime Scan Scope (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Enable for all documents</td>
</tr>
<tr class=''>
<td class='property-column1'>Protect document metadata for rights managed Office Open XML Files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow mix of policy and user locations (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Server Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable the Office client from polling the SharePoint Server for published links (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Smart Documents (Word, Excel)</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Smart Document's use of manifests (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Outlook 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security Form Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Outlook Security Mode (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Active X One Off Forms (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Sets which ActiveX controls to allow.</td>
<td class='property-column2'>Load only Outlook Controls</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow hyperlinks in suspected phishing e-mail messages (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow scripts in one-off Outlook forms (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow users to demote attachments to Level 2 (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Authentication with Exchange Server (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Select the authentication with Exchange server. (User)</td>
<td class='property-column2'>Kerberos Password Authentication</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure Outlook object model prompt when accessing an address book (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Guard behavior: (User)</td>
<td class='property-column2'>Automatically Deny</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure Outlook object model prompt When accessing the Formula property of a UserProperty object (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Guard behavior: (User)</td>
<td class='property-column2'>Automatically Deny</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure Outlook object model prompt when executing Save As (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Guard behavior: (User)</td>
<td class='property-column2'>Automatically Deny</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure Outlook object model prompt when reading address information (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Guard behavior: (User)</td>
<td class='property-column2'>Automatically Deny</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure Outlook object model prompt when responding to meeting and task requests (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Guard behavior: (User)</td>
<td class='property-column2'>Automatically Deny</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Configure Outlook object model prompt when sending mail (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Guard behavior: (User)</td>
<td class='property-column2'>Automatically Deny</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Display Level 1 attachments (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Do not allow Outlook object model scripts to run for public folders (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Do not allow Outlook object model scripts to run for shared folders (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable RPC encryption (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Include Internet in Safe Zones for Automatic Picture Download (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Minimum encryption settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Minimum key size (in bits): (User)</td>
<td class='property-column2'>168</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Outlook Security Policy: (User)</td>
<td class='property-column2'>Use Outlook Security Group Policy</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Prevent users from customizing attachment security settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Remove file extensions blocked as Level 1 (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Removed Extensions: (User)</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Remove file extensions blocked as Level 2 (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Removed Extensions: (User)</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Retrieving CRLs (Certificate Revocation Lists) (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'></td>
<td class='property-column2'>When online always retreive the CRL</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Security setting for macros (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Security Level (User)</td>
<td class='property-column2'>Warn for signed, disable unsigned</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Set Outlook object model custom actions execution prompt (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>When executing a custom action: (User)</td>
<td class='property-column2'>Automatically Deny</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Signature Warning (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Signature Warning (User)</td>
<td class='property-column2'>Always warn about invalid signatures</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Use Unicode format when dragging e-mail message to file system (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft PowerPoint 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Run Programs (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>disable (don't run any programs)</td>
</tr>
<tr class=''>
<td class='property-column1'>Scan encrypted macros in PowerPoint Open XML presentations (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Scan encrypted macros (default)</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off file validation (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Block macros from running in Office files from the Internet (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require that application add-ins are signed by Trusted Publisher (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Trust Bar Notification for unsigned application add-ins and block them (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>VBA Macro Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all except digitally signed macros</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>File Block Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>PowerPoint 97-2003 presentations, shows, templates and add-in files (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Set default file block behavior (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Blocked files are not opened</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Protected View</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not open files from the Internet zone in Protected View (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not open files in unsafe locations in Protected View (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Set document behavior if file validation fails (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Open in Protected View</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Checked: Allow edit.  Unchecked: Do not allow edit. (User)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Protected View for attachments opened from Outlook (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trusted Locations</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Trusted Locations on the network (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Project 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Trusted Locations on the network (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Block macros from running in Office files from the internet (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require that application add-ins are signed by Trusted Publisher (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Trust Bar Notification for unsigned application add-ins and block them (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>VBA Macro Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all except digitally signed macros</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Publisher 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Publisher Automation Security Level (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>By UI (prompted)</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Block macros from running in Office files from the internet (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require that application add-ins are signed by Trusted Publisher (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Trust Bar Notification for unsigned application add-ins (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>VBA Macro Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all except digitally signed macros</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Visio 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Trusted Locations on the network (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Block macros from running in Office files from the Internet (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require that application add-ins are signed by Trusted Publisher (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Trust Bar Notification for unsigned application add-ins and block them (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>VBA Macro Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all except digitally signed macros</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>File Block Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Visio 2000-2002 Binary Drawings, Templates and Stencils (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked</td>
</tr>
<tr class=''>
<td class='property-column1'>Visio 2003-2010 Binary Drawings, Templates and Stencils (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked</td>
</tr>
<tr class=''>
<td class='property-column1'>Visio 5.0 or earlier Binary Drawings, Templates and Stencils (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Word 2016</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trust Center</td>
</tr>
<tr class=''>
<td class='property-column1'>Block macros from running in Office files from the Internet (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Dynamic Data Exchange (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Require that application add-ins are signed by Trusted Publisher (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Trust Bar Notification for unsigned application add-ins and block them (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Scan encrypted macros in Word Open XML documents (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Scan encrypted macros (default)</td>
</tr>
<tr class=''>
<td class='property-column1'>VBA Macro Notification Settings (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Disable all except digitally signed macros</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>File Block Settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Set default file block behavior (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Blocked files are not opened</td>
</tr>
<tr class=''>
<td class='property-column1'>Word 2 and earlier binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Word 2000 binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Word 2003 binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Word 2007 and later binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Word 6.0 binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Word 95 binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Word 97 binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr class=''>
<td class='property-column1'>Word XP binary documents and templates (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>File block setting: (User)</td>
<td class='property-column2'>Open/Save blocked, use open policy</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Protected View</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not open files from the Internet zone in Protected View (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not open files in unsafe locations in Protected View (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Set document behavior if file validation fails (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'></td>
<td class='property-column2'>Open in Protected View</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Checked: Allow edit.  Unchecked: Do not allow edit. (User)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off Protected View for attachments opened from Outlook (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Trusted Locations</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Trusted Locations on the network (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Security</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off file validation (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 96. Settings - Win - OIB - SC - Microsoft Office - U - Security - v3.6


<h3 id="section-51">Win - OIB - SC - Microsoft OneDrive - D - Configuration - v3.2</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft OneDrive - D - Configuration - v3.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>01 August 2024 14:53:56</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:12:33</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 97. Basics - Win - OIB - SC - Microsoft OneDrive - D - Configuration - v3.2


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>OneDrive</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow syncing OneDrive accounts for only specific organizations</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Tenant ID: (Device)</td>
<td class='property-column2'>%OrganizationID%</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users to contact Microsoft for feedback and support</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable automatic upload bandwidth management for OneDrive</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable sync health reporting for OneDrive</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Exclude specific kinds of files from being uploaded</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Keywords: (Device)</td>
<td class='property-column2'>*.accdb;*.appx;*.bat;*.cmd;*.exe,*.img;*.iso;*.jar;*.lnk;*.mdb;*.msi;*.pst;*.reg;*.vbs;*.vhd;*.vhdx;*.vmdk</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent users from redirecting their Windows known folders to their PC</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Set the sync app update ring</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Update ring: (Device)</td>
<td class='property-column2'>Production</td>
</tr>
<tr class=''>
<td class='property-column1'>Silently move Windows known folders to OneDrive</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Desktop (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Documents (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Pictures (Device)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Show notification to users after folders have been redirected: (Device)</td>
<td class='property-column2'>Yes</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Tenant ID: (Device)</td>
<td class='property-column2'>%OrganizationID%</td>
</tr>
<tr class=''>
<td class='property-column1'>Silently sign in users to the OneDrive sync app with their Windows credentials</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Use OneDrive Files On-Demand</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 98. Settings - Win - OIB - SC - Microsoft OneDrive - D - Configuration - v3.2


<h3 id="section-52">Win - OIB - SC - Microsoft OneDrive - U - Configuration - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft OneDrive - U - Configuration - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:42</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:12:44</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 99. Basics - Win - OIB - SC - Microsoft OneDrive - U - Configuration - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>OneDrive</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow users to choose how to handle Office file sync conflicts (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable the tutorial that appears at the end of OneDrive Setup (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent users from changing the location of their OneDrive folder (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Change location setting: (User)</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Name</td>
<td class='property-column2'>%OrganizationID%</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Value</td>
<td class='property-column2'>1</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent users from syncing personal OneDrive accounts (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 100. Settings - Win - OIB - SC - Microsoft OneDrive - U - Configuration - v3.0


<h3 id="section-53">Win - OIB - SC - Microsoft Store - D - Configuration - v3.4</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Store - D - Configuration - v3.4</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:36:24</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 August 2025 14:12:14</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 101. Basics - Win - OIB - SC - Microsoft Store - D - Configuration - v3.4


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft App Store</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow All Trusted Apps</td>
<td class='property-column2'>Explicit deny.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow apps from the Microsoft app store to auto update</td>
<td class='property-column2'>Allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Developer Unlock</td>
<td class='property-column2'>Explicit deny.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Game DVR</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Block Non Admin User Install</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1'>MSI Allow User Control Over Install</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>MSI Always Install With Elevated Privileges</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 102. Settings - Win - OIB - SC - Microsoft Store - D - Configuration - v3.4


<h3 id="section-54">Win - OIB - SC - Microsoft Store - U - Configuration - v3.3</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Microsoft Store - U - Configuration - v3.3</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: The "Turn off the Store application" setting does not work on Windows Pro/Business SKU's:<br />https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-admx-windowsstore?WT.mc_id=Portal-fx#removewindowsstore_2</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>31 July 2024 12:57:24</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:13:02</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 103. Basics - Win - OIB - SC - Microsoft Store - U - Configuration - v3.3


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Start Menu and Taskbar</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not allow pinning Store app to the Taskbar (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Store</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn off the Store application (User)</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft App Store</td>
</tr>
<tr class=''>
<td class='property-column1'>MSI Always Install With Elevated Privileges (User)</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 104. Settings - Win - OIB - SC - Microsoft Store - U - Configuration - v3.3


<h3 id="section-55">Win - OIB - SC - Windows Hello for Business - D - Cloud Kerberos Trust - v3.5</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Windows Hello for Business - D - Cloud Kerberos Trust - v3.5</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: Requires setup of Cloud Kerberos Trust to function.<br />https://learn.microsoft.com/en-us/windows/security/identity-protection/hello-for-business/deploy/hybrid-cloud-kerberos-trust</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:45</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>17 February 2025 13:00:16</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 105. Basics - Win - OIB - SC - Windows Hello for Business - D - Cloud Kerberos Trust - v3.5


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Kerberos</td>
</tr>
<tr class=''>
<td class='property-column1'>Cloud Kerberos Ticket Retrieval Enabled</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows Hello For Business</td>
</tr>
<tr class=''>
<td class='property-column1'>Device-scoped settings</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Use Cloud Trust For On Prem Auth</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 106. Settings - Win - OIB - SC - Windows Hello for Business - D - Cloud Kerberos Trust - v3.5


<h3 id="section-56">Win - OIB - SC - Windows Update for Business - D - Delivery Optimisation - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Windows Update for Business - D - Delivery Optimisation - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:45</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:13:32</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 107. Basics - Win - OIB - SC - Windows Update for Business - D - Delivery Optimisation - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Delivery Optimization</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Absolute Max Cache Size</td>
<td class='property-column2'>0</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Allow VPN Peer Caching</td>
<td class='property-column2'>Not allowed</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Download Mode</td>
<td class='property-column2'>HTTP blended with peering behind the same NAT</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Group Id Source</td>
<td class='property-column2'>Entra ID Tenant ID</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Max Cache Age</td>
<td class='property-column2'>0</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Max Cache Size</td>
<td class='property-column2'>20</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Min Background Qos</td>
<td class='property-column2'>500</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Min Battery Percentage Allowed To Upload</td>
<td class='property-column2'>40</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Min File Size To Cache</td>
<td class='property-column2'>10</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Min RAM Allowed To Peer</td>
<td class='property-column2'>2</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Monthly Upload Data Cap</td>
<td class='property-column2'>0</td>
</tr>
<tr class=''>
<td class='property-column1'>DO Restrict Peer Selection By</td>
<td class='property-column2'>Local discovery (DNS-SD)</td>
</tr>
</table>

###### Table 108. Settings - Win - OIB - SC - Windows Update for Business - D - Delivery Optimisation - v3.0


<h3 id="section-57">Win - OIB - SC - Windows Update for Business - D - Reports and Telemetry - v3.0</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Windows Update for Business - D - Reports and Telemetry - v3.0</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: Contains policies required for Windows Update for Business Reports. Further configuration required:<br />https://learn.microsoft.com/en-us/windows/deployment/update/wufb-reports-enable</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>09 August 2023 16:01:46</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>05 December 2024 20:15:27</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 109. Basics - Win - OIB - SC - Windows Update for Business - D - Reports and Telemetry - v3.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>System</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow device name to be sent in Windows diagnostic data</td>
<td class='property-column2'>Allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Telemetry</td>
<td class='property-column2'>Full</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Telemetry Opt In Change Notification</td>
<td class='property-column2'>Disable telemetry change notifications.</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Telemetry Opt In Settings Ux</td>
<td class='property-column2'>Disable Telemetry opt-in Settings.</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows Update For Business</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Temporary Enterprise Feature Control</td>
<td class='property-column2'>Allowed</td>
</tr>
</table>

###### Table 110. Settings - Win - OIB - SC - Windows Update for Business - D - Reports and Telemetry - v3.0


<h3 id="section-58">Win - OIB - SC - Windows User Experience - D - Feature Configuration - v3.1</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Windows User Experience - D - Feature Configuration - v3.1</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>29 August 2025 11:15:02</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>29 August 2025 11:15:02</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 111. Basics - Win - OIB - SC - Windows User Experience - D - Feature Configuration - v3.1


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Filesystem</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable dev drive</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Experience</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Chat Icon</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Search</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Cloud Search</td>
<td class='property-column2'>Allowed.</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Indexing Encrypted Stores Or Items</td>
<td class='property-column2'>Block</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Removable Drive Indexing</td>
<td class='property-column2'>Enable.</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Widgets</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow widgets</td>
<td class='property-column2'>Not allowed.</td>
</tr>
</table>

###### Table 112. Settings - Win - OIB - SC - Windows User Experience - D - Feature Configuration - v3.1


<h3 id="section-59">Win - OIB - SC - Windows User Experience - D - Settings Sync - v3.7</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Windows User Experience - D - Settings Sync - v3.7</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'>NOTE: This policy assumes you have Enabled the Windows Backup and Restore feature in the Devices > Windows > Enrollment page:<br />https://techcommunity.microsoft.com/blog/windows-itpro-blog/windows-backup-for-organizations-is-now-available/4441655</td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>29 August 2025 11:12:17</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>08 October 2025 10:37:53</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 113. Basics - Win - OIB - SC - Windows User Experience - D - Settings Sync - v3.7


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Administrative Templates</td>
</tr>
<tr>
<td colspan="2" class='category-level2'>Sync your settings</td>
</tr>
<tr class=''>
<td class='property-column1'>Do not sync passwords</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow users to turn "passwords" syncing on. (Device)</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Windows Backup</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Windows Restore (Windows Insiders only)</td>
<td class='property-column2'>Windows Restore Enabled</td>
</tr>
</table>

###### Table 114. Settings - Win - OIB - SC - Windows User Experience - D - Settings Sync - v3.7


<h3 id="section-60">Win - OIB - SC - Windows User Experience - U - Copilot - v3.6</h3>

<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Basics</td>
</tr>
<tr class=''>
<td class='property-column1'>Name</td>
<td class='property-column2'>Win - OIB - SC - Windows User Experience - U - Copilot - v3.6</td>
</tr>
<tr class=''>
<td class='property-column1'>Description</td>
<td class='property-column2'></td>
</tr>
<tr class=''>
<td class='property-column1'>Profile type</td>
<td class='property-column2'>Settings catalog</td>
</tr>
<tr class=''>
<td class='property-column1'>Platform supported</td>
<td class='property-column2'>Windows 10 and later</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>10 April 2024 20:35:10</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>18 April 2025 12:09:03</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 115. Basics - Win - OIB - SC - Windows User Experience - U - Copilot - v3.6


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Windows AI</td>
</tr>
<tr class=''>
<td class='property-column1'>Turn Off Copilot in Windows (User)</td>
<td class='property-column2'>Disable Copilot</td>
</tr>
</table>

###### Table 116. Settings - Win - OIB - SC - Windows User Experience - U - Copilot - v3.6



