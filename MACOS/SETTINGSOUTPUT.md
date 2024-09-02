# Intune documentation

*OS:* MacOS

*Version:* v1.0

*Generated:* 2024-08-30


## Table of Contents
- [Device configuration](#section-1)

  - [Settings Catalog](#section-2)

    - [MacOS - OIB - Authentication - D - Platform SSO - v1.0](#section-3)

    - [MacOS - OIB - Defender Antivirus - D - Antivirus Configuration - v1.0](#section-4)

    - [MacOS - OIB - Defender Antivirus - D - MDE Configuration - v1.0](#section-5)

    - [MacOS - OIB - Device Security - D - Accounts and Login - v1.0](#section-6)

    - [MacOS - OIB - Device Security - D - Restrictions - v1.0](#section-7)

    - [MacOS - OIB - Disk Encryption - D - FileVault - v1.0](#section-8)

    - [MacOS - OIB - Firewall - D - Gatekeeper - v1.0](#section-9)

    - [MacOS - OIB - Microsoft AutoUpdate - D - MAU Configuration - v1.0](#section-10)

    - [MacOS - OIB - Microsoft Edge - D - Password Management - v1.0](#section-11)

    - [MacOS - OIB - Microsoft Edge - D - Security - v1.0](#section-12)

    - [MacOS - OIB - Microsoft Edge - U - Extensions - v1.0](#section-13)

    - [MacOS - OIB - Microsoft Edge - U - Profiles, Sign-In and Sync - v1.0](#section-14)

    - [MacOS - OIB - Microsoft Edge - U - Updates - v1.0](#section-15)

    - [MacOS - OIB - Microsoft Office - D - Office Configuration - v1.0](#section-16)

    - [MacOS - OIB - Microsoft OneDrive - D - Service and Access - v1.0](#section-17)

    - [MacOS - OIB - Microsoft OneDrive - U - Known Folder Move - v1.0](#section-18)

    - [MacOS - OIB - Updates - D - Update Configuration - v1.0](#section-19)


<h1 id="section-1">Device configuration</h1>
<h2 id="section-2">Settings Catalog</h2>
<h3 id="section-3">MacOS - OIB - Authentication - D - Platform SSO - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Authentication - D - Platform SSO - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>22 August 2024 19:52:01</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>22 August 2024 19:52:01</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 1. Basics - MacOS - OIB - Authentication - D - Platform SSO - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Extension Identifier</td>
<td class='property-column2'>com.microsoft.CompanyPortalMac.ssoextension</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Team Identifier</td>
<td class='property-column2'>UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Type</td>
<td class='property-column2'>Redirect</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Extension Data</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Type</td>
<td class='property-column2'>String</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Value</td>
<td class='property-column2'>com.microsoft.,com.apple.</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Key</td>
<td class='property-column2'>AppPrefixAllowList</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Type</td>
<td class='property-column2'>Integer</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Value</td>
<td class='property-column2'>1</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Key</td>
<td class='property-column2'>browser_sso_interaction_enabled</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Type</td>
<td class='property-column2'>Integer</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Value</td>
<td class='property-column2'>1</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Key</td>
<td class='property-column2'>disable_explicit_app_prompt</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>URLs</td>
<td class='property-column2'>https://login.microsoftonline.com;https://login.microsoft.com;https://sts.windows.net</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Screen Locked Behavior</td>
<td class='property-column2'>Do Not Handle</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Authentication Method (Deprecated)</td>
<td class='property-column2'>UserSecureEnclaveKey</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Registration Token</td>
<td class='property-column2'>{{DEVICEREGISTRATION}}</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Platform SSO</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Authentication Method</td>
<td class='property-column2'>UserSecureEnclaveKey</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Use Shared Device Keys</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Enable Create User At Login</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Enable Authorization</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Token To User Mapping</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:20px !important;'>Account Name</td>
<td class='property-column2'>preferred_username</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Full Name</td>
<td class='property-column2'>name</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>New User Authorization Mode</td>
<td class='property-column2'>Standard</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>User Authorization Mode</td>
<td class='property-column2'>Standard</td>
</tr>
</table>

###### Table 2. Settings - MacOS - OIB - Authentication - D - Platform SSO - v1.0


<h3 id="section-4">MacOS - OIB - Defender Antivirus - D - Antivirus Configuration - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Defender Antivirus - D - Antivirus Configuration - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>30 August 2024 11:15:48</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>30 August 2024 11:15:48</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 3. Basics - MacOS - OIB - Defender Antivirus - D - Antivirus Configuration - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Disallowed threat actions</td>
<td class='property-column2'>allow;restore</td>
</tr>
<tr class=''>
<td class='property-column1'>Enforcement level</td>
<td class='property-column2'>real_time</td>
</tr>
<tr class=''>
<td class='property-column1'>Exclusions merge</td>
<td class='property-column2'>admin_only</td>
</tr>
<tr class=''>
<td class='property-column1'>Run a scan after definitions are updated</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Scanning inside archive files</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Threat type settings</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Threat type</td>
<td class='property-column2'>potentially_unwanted_application</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Action to take</td>
<td class='property-column2'>block</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Threat type</td>
<td class='property-column2'>archive_bomb</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Action to take</td>
<td class='property-column2'>block</td>
</tr>
<tr class=''>
<td class='property-column1'>Threat type settings merge</td>
<td class='property-column2'>admin_only</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatic security intelligence updates</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Cloud Block Level</td>
<td class='property-column2'>normal</td>
</tr>
<tr class=''>
<td class='property-column1'>Diagnostic collection level</td>
<td class='property-column2'>optional</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable / disable automatic sample submissions</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable / disable cloud delivered protection</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable / disable early preview</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Use System Extensions</td>
<td class='property-column2'>enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enforcement level</td>
<td class='property-column2'>block</td>
</tr>
<tr class=''>
<td class='property-column1'>Enforcement level</td>
<td class='property-column2'>block</td>
</tr>
<tr class=''>
<td class='property-column1'>Process exclusions</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Process path</td>
<td class='property-column2'>/Library/Intune/Microsoft Intune Agent.app/Contents/MacOS/IntuneMdmDaemon</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Process's TeamIdentifier</td>
<td class='property-column2'>UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Process's Signing Identifier</td>
<td class='property-column2'>IntuneMdmDaemon</td>
</tr>
<tr class=''>
<td class='property-column1'>Control sign-in to consumer version</td>
<td class='property-column2'>disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Show / hide status menu icon</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 4. Settings - MacOS - OIB - Defender Antivirus - D - Antivirus Configuration - v1.0


<h3 id="section-5">MacOS - OIB - Defender Antivirus - D - MDE Configuration - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Defender Antivirus - D - MDE Configuration - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 16:20:18</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>19 August 2024 15:05:16</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 5. Basics - MacOS - OIB - Defender Antivirus - D - MDE Configuration - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Rules</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Rule Type</td>
<td class='property-column2'>Label Prefix</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Rule Value</td>
<td class='property-column2'>com.microsoft.fresno</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Rule Type</td>
<td class='property-column2'>Label Prefix</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Rule Value</td>
<td class='property-column2'>com.microsoft.dlp</td>
</tr>
<tr class=''>
<td class='property-column1'>Applications</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Microsoft Defender</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Microsoft Defender Application ID</td>
<td class='property-column2'>WDAV00</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Microsoft Defender LCID</td>
<td class='property-column2'>1033</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Update channel override</td>
<td class='property-column2'>Current Channel</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Services</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Accessibility</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:20px !important;'>Identifier</td>
<td class='property-column2'>com.microsoft.dlp.daemon</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Identifier Type</td>
<td class='property-column2'>bundle ID</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Code Requirement</td>
<td class='property-column2'>identifier "com.microsoft.dlp.daemon" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /`* exists `*/ and certificate leaf[field.1.2.840.113635.100.6.1.13] /`* exists `*/ and certificate leaf[subject.OU] = UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Static Code</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Allowed</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Authorization</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>System Policy All Files</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:20px !important;'>Identifier</td>
<td class='property-column2'>com.microsoft.wdav</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Identifier Type</td>
<td class='property-column2'>bundle ID</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Code Requirement</td>
<td class='property-column2'>identifier "com.microsoft.wdav" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /`* exists `*/ and certificate leaf[field.1.2.840.113635.100.6.1.13] /`* exists `*/ and certificate leaf[subject.OU] = UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Static Code</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Allowed</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Authorization</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:20px !important;'>Identifier</td>
<td class='property-column2'>com.microsoft.wdav.epsext</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Identifier Type</td>
<td class='property-column2'>bundle ID</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Code Requirement</td>
<td class='property-column2'>identifier "com.microsoft.wdav.epsext" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /`* exists `*/ and certificate leaf[field.1.2.840.113635.100.6.1.13] /`* exists `*/ and certificate leaf[subject.OU] = UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Static Code</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Allowed</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Authorization</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:20px !important;'>Identifier</td>
<td class='property-column2'>com.microsoft.dlp.daemon</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Identifier Type</td>
<td class='property-column2'>bundle ID</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Code Requirement</td>
<td class='property-column2'>identifier "com.microsoft.dlp.daemon" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /`* exists `*/ and certificate leaf[field.1.2.840.113635.100.6.1.13] /`* exists `*/ and certificate leaf[subject.OU] = UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Static Code</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Allowed</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Authorization</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Bluetooth Always</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:20px !important;'>Identifier</td>
<td class='property-column2'>com.microsoft.dlp.daemon</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Identifier Type</td>
<td class='property-column2'>bundleID</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Code Requirement</td>
<td class='property-column2'>identifier "com.microsoft.dlp.daemon" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /`* exists `*/ and certificate leaf[field.1.2.840.113635.100.6.1.13] /`* exists `*/ and certificate leaf[subject.OU] = UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Static Code</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Allowed</td>
<td class='property-column2'>Allowed</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Authorization</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Allowed System Extensions</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Allowed System Extensions</td>
<td class='property-column2'>com.microsoft.wdav.epsext;com.microsoft.wdav.netext</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Team Identifier</td>
<td class='property-column2'>UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Notification Settings</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Bundle Identifier</td>
<td class='property-column2'>com.microsoft.wdav.tray</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Notifications Enabled</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Show In Notification Center</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Show In Lock Screen</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Alert Type</td>
<td class='property-column2'>Temporary Banner</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Badges Enabled</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Sounds Enabled</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Critical Alert Enabled</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>User Defined Name</td>
<td class='property-column2'>Microsoft Defender Content Filter</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Plugin Bundle ID</td>
<td class='property-column2'>com.microsoft.wdav</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Organization</td>
<td class='property-column2'>JAMF Software</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Filter Sockets</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Filter Data Provider Designated Requirement</td>
<td class='property-column2'>identifier "com.microsoft.wdav.netext" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /`* exists `*/ and certificate leaf[field.1.2.840.113635.100.6.1.13] /`* exists `*/ and certificate leaf[subject.OU] = UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Filter Data Provider Bundle Identifier</td>
<td class='property-column2'>com.microsoft.wdav.netext</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Filter Packets</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Filter Grade</td>
<td class='property-column2'>inspector</td>
</tr>
</table>

###### Table 6. Settings - MacOS - OIB - Defender Antivirus - D - MDE Configuration - v1.0


<h3 id="section-6">MacOS - OIB - Device Security - D - Accounts and Login - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Device Security - D - Accounts and Login - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>30 August 2024 11:16:06</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>30 August 2024 11:16:06</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 7. Basics - MacOS - OIB - Device Security - D - Accounts and Login - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Disable Guest Account</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Hide Admin Users</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Admin Host Info</td>
<td class='property-column2'>HostName</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Console Access</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Disable Login Items Suppression</td>
<td class='property-column2'>True</td>
</tr>
</table>

###### Table 8. Settings - MacOS - OIB - Device Security - D - Accounts and Login - v1.0


<h3 id="section-7">MacOS - OIB - Device Security - D - Restrictions - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Device Security - D - Restrictions - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 17:03:25</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>17 August 2024 17:19:11</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 9. Basics - MacOS - OIB - Device Security - D - Restrictions - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Disabled Preference Panes</td>
<td class='property-column2'><details class='description'><summary data-open='Minimize' data-close='com.apple.AirDrop-Handoff-Settings.exten...expand'></summary>com.apple.AirDrop-Handoff-Settings.extension;com.apple.Family-Settings.extension;com.apple.Game-Center-Settings.extension;com.apple.Siri-Settings.extension;com.apple.Startup-Disk-Settings.extension;com.apple.Time-Machine-Settings.extension;com.apple.WalletSettingsExtension;com.apple.systempreferences.AppleIDSettings</details></td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Allow Account Modification</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Activity Continuation</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Adding Game Center Friends</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow AirDrop</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Air Play Incoming Requests</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Apple Personalized Advertising</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Assistant</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Auto Unlock</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Bluetooth Sharing Modification</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Address Book</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Bookmarks</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Calendar</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Desktop And Documents</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Document Sync</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Freeform</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Keychain Sync</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Mail</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Notes</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Photo Library</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Private Relay</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Cloud Reminders</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Device Name Modification</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Erase Content And Settings</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow File Sharing Modification</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Find My Device</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Find My Friends</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Game Center</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Internet Sharing Modification</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow iTunes File Sharing</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Local User Creation</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Multiplayer Gaming</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Password Proximity Requests</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Password Sharing</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Printer Sharing Modification</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Startup Disk Modification</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Safari Allow Autofill</td>
<td class='property-column2'>False</td>
</tr>
</table>

###### Table 10. Settings - MacOS - OIB - Device Security - D - Restrictions - v1.0


<h3 id="section-8">MacOS - OIB - Disk Encryption - D - FileVault - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Disk Encryption - D - FileVault - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>30 August 2024 11:16:22</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>30 August 2024 11:16:22</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 11. Basics - MacOS - OIB - Disk Encryption - D - FileVault - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Enable</td>
<td class='property-column2'>On</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Force Enable In Setup Assistant</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Recovery Key Rotation In Months</td>
<td class='property-column2'>6 months</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Prevent FileVault From Being Disabled</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Location</td>
<td class='property-column2'>You can retrieve the personal recovery key for your macOS device from the Microsoft Intune app, Company Portal website, or Company Portal apps for Android and iOS/iPadOS. Support cannot access recovery keys that belong to personal devices.</td>
</tr>
</table>

###### Table 12. Settings - MacOS - OIB - Disk Encryption - D - FileVault - v1.0


<h3 id="section-9">MacOS - OIB - Firewall - D - Gatekeeper - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Firewall - D - Gatekeeper - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>30 August 2024 11:16:37</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>30 August 2024 11:16:37</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 13. Basics - MacOS - OIB - Firewall - D - Gatekeeper - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Enable Firewall</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Block All Incoming</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Stealth Mode</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable Logging</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Enable Assessment</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Allow Identified Developers</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Enable XProtect Malware Upload</td>
<td class='property-column2'>Disabled</td>
</tr>
</table>

###### Table 14. Settings - MacOS - OIB - Firewall - D - Gatekeeper - v1.0


<h3 id="section-10">MacOS - OIB - Microsoft AutoUpdate - D - MAU Configuration - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft AutoUpdate - D - MAU Configuration - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 15:54:53</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>19 August 2024 15:32:58</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 15. Basics - MacOS - OIB - Microsoft AutoUpdate - D - MAU Configuration - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Rules</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Rule Type</td>
<td class='property-column2'>Bundle Identifier</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Rule Value</td>
<td class='property-column2'>com.microsoft.autoupdate2</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Comment</td>
<td class='property-column2'>MAU</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatically acknowledge data collection policy</td>
<td class='property-column2'>Acknowledge - send required data</td>
</tr>
<tr class=''>
<td class='property-column1'>Days before forced updates</td>
<td class='property-column2'>14</td>
</tr>
<tr class=''>
<td class='property-column1'>Deferred updates</td>
<td class='property-column2'>Defer 3 days</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable Office Insider membership</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable AutoUpdate</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable check for updates</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Guard against app modification</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Register app on launch</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Update cache server</td>
<td class='property-column2'>https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/</td>
</tr>
<tr class=''>
<td class='property-column1'>Update channel</td>
<td class='property-column2'>Current Channel</td>
</tr>
<tr class=''>
<td class='property-column1'>Updater optimization technique</td>
<td class='property-column2'>Lower network overhead</td>
</tr>
</table>

###### Table 16. Settings - MacOS - OIB - Microsoft AutoUpdate - D - MAU Configuration - v1.0


<h3 id="section-11">MacOS - OIB - Microsoft Edge - D - Password Management - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft Edge - D - Password Management - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 17:22:39</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>17 August 2024 17:22:39</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 17. Basics - MacOS - OIB - Microsoft Edge - D - Password Management - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow Microsoft Edge to monitor user passwords</td>
<td class='property-column2'>Allowed</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure password protection warning trigger</td>
<td class='property-column2'>Password protection warning is triggered by password reuse</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable saving passwords to the password manager</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 18. Settings - MacOS - OIB - Microsoft Edge - D - Password Management - v1.0


<h3 id="section-12">MacOS - OIB - Microsoft Edge - D - Security - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft Edge - D - Security - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 17:22:54</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>19 August 2024 15:41:58</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 19. Basics - MacOS - OIB - Microsoft Edge - D - Security - v1.0


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
<td class='property-column2'>Block ads on sites with intrusive ads. (Default value)</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow download restrictions</td>
<td class='property-column2'>Block dangerous downloads</td>
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
<td class='property-column1'>Allow user-level native messaging hosts (installed without admin permissions)</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatically import another browser's data and settings at first run</td>
<td class='property-column2'>Disables automatic import, and the import section of the first-run experience is skipped</td>
</tr>
<tr class=''>
<td class='property-column1'>Block tracking of users' web-browsing activity</td>
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
<td class='property-column1'>Configure Microsoft Defender SmartScreen</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Configure Microsoft Defender SmartScreen to block potentially unwanted apps</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Control communication with the Experimentation and Configuration Service</td>
<td class='property-column2'>Disable communication with the Experimentation and Configuration Service</td>
</tr>
<tr class=''>
<td class='property-column1'>DNS interception checks enabled</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable AutoFill for addresses</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable AutoFill for credit cards</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Google Cast</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Proactive Authentication</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide the First-run experience and splash screen</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Minimum TLS version enabled</td>
<td class='property-column2'>TLS 1.2</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent bypassing Microsoft Defender SmartScreen prompts for sites</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Supported authentication schemes</td>
<td class='property-column2'>ntlm,negotiate</td>
</tr>
</table>

###### Table 20. Settings - MacOS - OIB - Microsoft Edge - D - Security - v1.0


<h3 id="section-13">MacOS - OIB - Microsoft Edge - U - Extensions - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft Edge - U - Extensions - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 17:23:16</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>17 August 2024 17:23:16</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 21. Basics - MacOS - OIB - Microsoft Edge - U - Extensions - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Allow specific extensions to be installed</td>
<td class='property-column2'>odfafepnkmbhccpbejgmiehpchacaeak</td>
</tr>
<tr class=''>
<td class='property-column1'>Blocks external extensions from being installed</td>
<td class='property-column2'>Enabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Control which extensions are installed silently</td>
<td class='property-column2'>nkbndigcebkoaejohleckhekfmcecfja;ofefcgjbeghpigppfmkologfjadafddi</td>
</tr>
<tr class=''>
<td class='property-column1'>Control which extensions cannot be installed</td>
<td class='property-column2'>`*</td>
</tr>
</table>

###### Table 22. Settings - MacOS - OIB - Microsoft Edge - U - Extensions - v1.0


<h3 id="section-14">MacOS - OIB - Microsoft Edge - U - Profiles, Sign-In and Sync - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft Edge - U - Profiles, Sign-In and Sync - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 17:23:32</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>17 August 2024 17:23:32</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 23. Basics - MacOS - OIB - Microsoft Edge - U - Profiles, Sign-In and Sync - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr>
<td colspan="2" class='category-level1'>Microsoft Edge</td>
</tr>
<tr class=''>
<td class='property-column1'>Browser sign-in settings</td>
<td class='property-column2'>Force users to sign-in to use the browser</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable profile creation from the Identity flyout menu or the Settings page</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable use of ephemeral profiles</td>
<td class='property-column2'>Disabled</td>
</tr>
<tr class=''>
<td class='property-column1'>Force synchronization of browser data and do not show the sync consent prompt</td>
<td class='property-column2'>Enabled</td>
</tr>
</table>

###### Table 24. Settings - MacOS - OIB - Microsoft Edge - U - Profiles, Sign-In and Sync - v1.0


<h3 id="section-15">MacOS - OIB - Microsoft Edge - U - Updates - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft Edge - U - Updates - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>19 August 2024 15:42:43</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>19 August 2024 15:42:43</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 25. Basics - MacOS - OIB - Microsoft Edge - U - Updates - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Rules</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Rule Type</td>
<td class='property-column2'>Label Prefix</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Rule Value</td>
<td class='property-column2'>com.microsoft.EdgeUpdater</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Comment</td>
<td class='property-column2'>Edge Updater</td>
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
<td class='property-column2'>Required - Show a recurring prompt to the user indicating that a restart is required</td>
</tr>
</table>

###### Table 26. Settings - MacOS - OIB - Microsoft Edge - U - Updates - v1.0


<h3 id="section-16">MacOS - OIB - Microsoft Office - D - Office Configuration - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft Office - D - Office Configuration - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>17 August 2024 17:23:48</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>19 August 2024 15:44:03</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 27. Basics - MacOS - OIB - Microsoft Office - D - Office Configuration - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Rules</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Rule Type</td>
<td class='property-column2'>Bundle Identifier</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Rule Value</td>
<td class='property-column2'>com.microsoft.office.licensingV2.helper</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Comment</td>
<td class='property-column2'>Office Licensing Helper</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable automatic sign-in</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Office Activation Email Address</td>
<td class='property-column2'>{{userprincipalname}}</td>
</tr>
</table>

###### Table 28. Settings - MacOS - OIB - Microsoft Office - D - Office Configuration - v1.0


<h3 id="section-17">MacOS - OIB - Microsoft OneDrive - D - Service and Access - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft OneDrive - D - Service and Access - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>30 August 2024 11:16:55</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>30 August 2024 11:16:55</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 29. Basics - MacOS - OIB - Microsoft OneDrive - D - Service and Access - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Rules</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Rule Type</td>
<td class='property-column2'>Label Prefix</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Rule Value</td>
<td class='property-column2'>com.microsoft.OneDrive</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Comment</td>
<td class='property-column2'>OneDrive (Standalone)</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Rule Type</td>
<td class='property-column2'>Bundle Identifier</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Rule Value</td>
<td class='property-column2'>com.microsoft.OneDriveLauncher</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Comment</td>
<td class='property-column2'>OneDrive Launcher</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Services</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>System Policy All Files</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:20px !important;'>Identifier</td>
<td class='property-column2'>com.microsoft.OneDrive</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Identifier Type</td>
<td class='property-column2'>bundle ID</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Code Requirement</td>
<td class='property-column2'>identifier "com.microsoft.OneDrive" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /`* exists `*/ and certificate leaf[field.1.2.840.113635.100.6.1.13] /`* exists `*/ and certificate leaf[subject.OU] = UBF8T346G9</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Static Code</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Allowed</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:20px !important;'>Authorization</td>
<td class='property-column2'>Allow</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Allowed System Extensions</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:15px !important;'>Allowed System Extensions</td>
<td class='property-column2'>com.microsoft.OneDrive.FinderSync</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:15px !important;'>Team Identifier</td>
<td class='property-column2'>UBF8T346G9</td>
</tr>
</table>

###### Table 30. Settings - MacOS - OIB - Microsoft OneDrive - D - Service and Access - v1.0


<h3 id="section-18">MacOS - OIB - Microsoft OneDrive - U - Known Folder Move - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Microsoft OneDrive - U - Known Folder Move - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>30 August 2024 11:17:13</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>30 August 2024 11:17:13</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 31. Basics - MacOS - OIB - Microsoft OneDrive - U - Known Folder Move - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Automatically and silently enable the Folder Backup feature (Known Folder Move)</td>
<td class='property-column2'>%OrganizationId%</td>
</tr>
<tr class=''>
<td class='property-column1'>Block external sync</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable automatic sign in</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable personal accounts</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Disable tutorial</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Display a notification to users once their folders have been redirected</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable Files On-Demand</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Enable simultaneous edits for Office apps</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Force users to use the Folder Backup feature (Known Folder Move)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Hide dock icon</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Ignore named files</td>
<td class='property-column2'>`*.lnk;`*.pst;`*.pkg;`*.dmg</td>
</tr>
<tr class=''>
<td class='property-column1'>Include ~/Desktop in Folder Backup (Known Folder Move)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Include ~/Documents in Folder Backup (Known Folder Move)</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Open at login</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1'>Prompt users to enable the Folder Backup feature (Known Folder Move)</td>
<td class='property-column2'>%OrganizationId%</td>
</tr>
</table>

###### Table 32. Settings - MacOS - OIB - Microsoft OneDrive - U - Known Folder Move - v1.0


<h3 id="section-19">MacOS - OIB - Updates - D - Update Configuration - v1.0</h3>

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
<td class='property-column2'>MacOS - OIB - Updates - D - Update Configuration - v1.0</td>
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
<td class='property-column2'>macOS</td>
</tr>
<tr class=''>
<td class='property-column1'>Created</td>
<td class='property-column2'>19 August 2024 15:21:27</td>
</tr>
<tr class=''>
<td class='property-column1'>Last modified</td>
<td class='property-column2'>19 August 2024 15:21:27</td>
</tr>
<tr class=''>
<td class='property-column1'>Scope tags</td>
<td class='property-column2'>Default</td>
</tr>
</table>

###### Table 33. Basics - MacOS - OIB - Updates - D - Update Configuration - v1.0


<table class='table-settings'>
<tr class='table-header1'>
<td>Name</td>
<td>Value</td>
</tr>
<tr class=''>
<td class='property-column1'>Top Level Setting Group Collection</td>
<td class='property-column2'>Not configured</td>
</tr>
<tr class='row-new-property'>
<td class='property-column1' style='padding-left:10px !important;'>Restrict Software Update Require Admin To Install</td>
<td class='property-column2'>False</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatically Install Mac OS Updates</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatically Install App Updates</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic Check Enabled</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Automatic Download</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Critical Update Install</td>
<td class='property-column2'>True</td>
</tr>
<tr class=''>
<td class='property-column1' style='padding-left:10px !important;'>Config Data Install</td>
<td class='property-column2'>True</td>
</tr>
</table>

###### Table 34. Settings - MacOS - OIB - Updates - D - Update Configuration - v1.0



