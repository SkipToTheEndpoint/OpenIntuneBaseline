# OIB Windows Change Log

# Windows v4.0 - 2026-09-30 - 26H2 Edition
Windows 11 26H2 is upon us, and with it comes the first major version number bump since the OIB's first "proper" release! Since then it's somehow grown far, far bigger than I ever imagined, and having the opportunity to travel into Europe and the US because people want to listen to me talk about the _little passion project that could_ has been genuinely heart-warming.

This release brings user experience and device security settings you're not going to find **anywhere else**, bug fixes thanks to the kind folks providing feedback and raising issues, and adjustments to keep your Intune admin experience manageable at scale.

Because I'm determined to beat Microsoft for the 3rd time running on getting the OIB out before they get their own into Intune, the only setting from [their 26H2 baseline](https://techcommunity.microsoft.com/blog/microsoft-security-baselines/windows-11-version-26h2-security-baseline/4560382) not included relates to Windows Ready Print, mostly because it's not in Settings Catalog at time of writing this, but also because most people are still battling with printers as it is, let alone Ready Print. I'll review and update as required.

I've also updated my [OIB vs CIS Deviation](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/blob/main/WINDOWS/OIB4.0-CIS5.0.0-DeviationRationale) report against their 5.0.0 Intune Benchmark, so you can see exactly what (and why) I've decided to not align here, and try and make those fights with security teams easier.

For your continued trust, support and positive comments, thank you. <3

## Added 🆕
### 🆕 Compliance
One of the biggest changes with this release is the separation of Compliance settings into their own policies, rather than grouped by higher-level categories. This allows for more granular control over compliance grace periods and makes it easier to manage potential exclusions per-environment. I've also brought them in-line with the broader OIB naming convention, which they weren't previously.

Below is a table of the new compliance policies, the setting being required, and the non-compliance schedule:

| Policy Name                                                  	| Setting Required                                                    	| Non-Compliance Schedule 	|
|--------------------------------------------------------------	|---------------------------------------------------------------------	|-------------------------	|
| Win - OIB - CP - Device Security - U - TPM - v4.0            	| Trusted Platform Module (TPM)                                       	| Immediately             	|
| Win - OIB - CP - Device Security - U - Firewall - v4.0       	| Firewall                                                            	| Immediately             	|
| Win - OIB - CP - Device Security - U - Antivirus- v4.0       	| Antivirus                                                           	| Immediately             	|
| Win - OIB - CP - Device Security - U - Antispyware - v4.0    	| Antispyware                                                         	| Immediately             	|
| Win - OIB - CP - Device Health - U - SecureBoot - v4.0       	| SecureBoot                                                          	| Immediately             	|
| Win - OIB - CP - Device Health - U - Code Integrity - v4.0   	| Code Integrity                                                      	| Immediately             	|
| Win - OIB - CP - Device Health - U - BitLocker - v4.0        	| BitLocker                                                           	| 0.5 Days                	|
| Win - OIB - CP - Defender - U - Security Intelligence - v4.0 	| Microsoft Defender Antimalware <br>security intelligence up-to-date 	| 0.25 Days               	|
| Win - OIB - CP - Defender - U - Real-Time Protection - v4.0  	| Real-Time Protection                                                	| Immediately             	|

Keen-eyed among you may notice the absence of what used to form the "Password" compliance policy. My reason for removing these is simple: They're trash.

The longer version to that is that they can be incredibly problematic, but also mostly redundant. Those Password compliance settings exist in the [DeviceLock CSP](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock), utilise the Exchange ActiveSync Policy Engine (EAS), and have been around since Windows 8.1. This often catches people off-guard, because people expect Compliance to merely check device settings, but these policies are actually then enforced. Moreover, they only impact local accounts. Things like password policies are either enforced via on-prem in a Hybrid Identity scenario, or by Entra itself if accounts are cloud only.

The only useful setting within that policy was "Maximum minutes of inactivity before password is required", which was enforced via MaxInactivityTimeDeviceLock. Rather than moving this setting elsewhere and still being subject to EAS (or potentially causing conflicts), this has been replaced by "Interactive Logon Machine Inactivity Limit" in the Power and Device Lock policy.

### Settings Catalog
#### 🆕 **Win - OIB - SC - Microsoft Edge - U - Management - v4.0**
The Edge Management Service ([https://admin.cloud.microsoft/#/Edge](https://admin.cloud.microsoft/#/Edge)) is an excellent addition to any Enterprise environment, providing centralized control and management of Microsoft Edge settings across *all* user devices (not just ones that are fully-managed).
From the incredible [Version Monitoring Dashboard](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-management-service-monitoring-dashboard) and more recent [Extensions Monitoring](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-extensions-monitoring) functionality, it allows a bunch of features that are difficult or impossible to achieve natively in Intune (e.g. allowing users to request Extensions for approval).

After playing with it in my environments for some time, the biggest pain-point has been the behaviour of policy application. By default, user policies from the cloud-based management service [will not override GPO/MDM delivered policies](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-management-service#control-policy-source-precedence), which can lead to frustrating results or conflicts. To counteract that, this new policy not only explicitly allows the usage of the Edge Management Service on managed devices, but configures the default user/platform policy application to listen to cloud policies first.

* Added the following settings:
    * Microsoft Edge management enabled (User) - `Enabled`
    * Allow cloud-based Microsoft Edge management service user policies to override local user policies. (User) - `Enabled`
    * Microsoft Edge management service policy overrides platform policy. (User) - `Enabled`
    * Microsoft Edge management extensions feedback enabled (User) - `Enabled`

> [!NOTE]
> This does not force you to have to use the Edge Management Service, purely allows "co-management" across Intune and the EMS to be far more frictionless. It's worth noting that if you can't access the admin portal, you'll need the "[Edge Administrator](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/permissions-reference#edge-administrator)" role in Entra.
> I would highly recommend enabling both the Version and Extension monitoring features regardless of plans to do anything else. It's literally free reporting.


## Changed/Updated 🔄️
### Settings Catalog
#### 🔄️**Win - OIB - ES - Windows LAPS - D - LAPS Configuration**
#### 🔄️**Win - OIB - SC - Device Security - D - Local Security Policies**
The above policies have not changed at all in content from their "(24H2+)" versions, but have been renamed to reflect currently supported Windows versions with 23H2 end of support on [Nov 26th 2026](https://learn.microsoft.com/en-us/lifecycle/products/windows-11-enterprise-and-education#:~:text=Oct%2031%2C%202023-,Nov%2010%2C%202026,-Version%2022H2). Policy naming has been bumped to 4.0, and they have superseded the previous versions in the policy manifest.

#### 🔄️**Win - OIB - SC - Defender Antivirus - D - Additional Configuration**
* Added "Disallow Exploit Protection Override" set to `Enabled`. This stops some unwanted and potentially confusing behavior where users could create exploit protection settings but not remove them again due to any actual changes requiring admin rights. Resolves [#247](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/247)
* Removed "Hide Exclusions From Local Users" as this is implicitly set by the setting "Hide Exclusions From Local Admins" and thus redundant.

#### 🔄️**Win - OIB - SC - Device Security - D - Audit and Event Logging**
* Changed "Privilege Use Audit Sensitive Privilege Use" from `Success + Failure` to `Success` to match CIS Benchmark.

#### 🔄️**Win - OIB - SC - Device Security - U - Power and Device Lock**
* Added "Interactive Logon Machine Inactivity Limit" set to `900` (15 minutes) to replace the previous Password compliance policy's "Maximum minutes of inactivity before password is required" setting.
> [!NOTE]
> The "15 Minute" inactivity time is driven by the UK NCSC/Cyber Essentials requirements. By all means amend these to suit your business or compliance requirements.
* Changed the following to be `1800` rather than `900` to avoid a device going to sleep at the same time as being automatically locked.
    * Specify the system sleep timeout (plugged in)
    * Unattended Sleep Timeout Plugged In

#### 🔄️**Win - OIB - SC - Device Security - D - Security Hardening**
* Added "Allow Custom SSPs and APs to be loaded into LSASS" set to `Disabled` to match current CIS and MS baselines.
* Changed the following Lanman settings to match current CIS benchmark (MS still have this at SMB 3.0.0):
    * Lanman Server > Min Smb2 Dialect - `SMB 3.1.1`
    * Lanman Workstation > Min Smb2 Dialect - `SMB 3.1.1`

#### 🔄️**Win - OIB - SC - Device Security - D - Script File Associations**
* Updated the Base64 string due to typo of `.ps1m` rather than `.psm1`. Resolves [#243](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/243)

#### 🔄️**Win - OIB - SC - Internet Explorer (Legacy) - D - Security**
* Changed "Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet" from `Disabled` to `Enabled` to enhance security against potentially harmful downloads.
* Changed "Turn off encryption support\Secure Protocol combinations" from `Only TLS 1.2` to `Use TLS 1.2 and TLS 1.3` to enhance security while maintaining compatibility with modern protocols. This setting had previously been broken when being applied via CSP but now works as expected. This also aligns with the [MS 26H2 Security Baseline](https://techcommunity.microsoft.com/blog/microsoft-security-baselines/windows-11-version-26h2-security-baseline/4560382).

#### 🔄️**Win - OIB - SC - Microsoft Edge - D - Security**
* Added the following settings in-line with the Microsoft [Edge v151 Security Baseline](https://techcommunity.microsoft.com/blog/microsoft-security-baselines/security-baseline-for-microsoft-edge-version-151/4549607):
    * [Enable Process Isolation](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/processisolationenabled?wt.mc_id=EM-MVP-5005288) - `Enabled`
    * [Enable renderer in app container](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/rendererappcontainerenabled?wt.mc_id=EM-MVP-5005288) - `Enabled`
    * [Enable the network service sandbox](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/networkservicesandboxenabled?wt.mc_id=EM-MVP-5005288) - `Enabled`
    * [Configure browser process code integrity guard setting](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/browsercodeintegritysetting?wt.mc_id=EM-MVP-5005288) - `Enabled`
        * Configure browser process code integrity guard setting -`Enable code integrity guard enforcement in the browser process`
    * [Enable Application Bound Encryption](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/applicationboundencryptionenabled?wt.mc_id=EM-MVP-5005288) - `Enabled`
> [!IMPORTANT]
> As always, test appropriately in your own environment. There have been some reports that Process Isolation and Code Integrity could cause some unwanted effect or impact to PWA's and printing respectively, however it is worth noting that these security features will become default-enabled in the future.
* Replaced an obsolete version of "Enhance the security state in Microsoft Edge" with its new version, retaining the `Balanced mode` sub-setting.

#### 🔄️**Win - OIB - SC - Microsoft Edge - D - Updates**
* Removed "Allow Installation" settings from Applications > Microsoft Edge and Microsoft Edge Web View2 Runtime as something has changed to cause the policy to throw conflicts. These are only relevant if you're wanting to explicitly control other channels of installation, such as Beta or Dev channels so is not a reduction in security or functionality. Resolves [#254](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/254)

#### 🔄️**Win - OIB - SC - Microsoft Edge - U - Profiles, Sign-In and Sync**
* Added the following setting to make sure auth pop-ups to M365 sites are allowed past any potential pop-up blocking:
    * [Allow M365 authentication popups in work profiles](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/m365authpopupsinworkenabled?wt.mc_id=EM-MVP-5005288) - `Enabled`
* Added the following setting to stop the default behaviour and prevent users from signing into Edge with non-Microsoft accounts, such as Google or Apple accounts. For those that might re-enable multiple profile creation, this will at least stop a user signing into their Google account within Edge and potentially causing a data leakage issue.
    * [Enable sign-in to Microsoft Edge using non-Microsoft accounts](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/nonmicrosoftaccountsigninenabled?wt.mc_id=EM-MVP-5005288) - `Disabled`

#### 🔄️**Win - OIB - SC - Microsoft Edge - U - User Experience**
* Changed "Allow notifications on specific sites" values to to a valid format. Resolves [#213](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/213)
    * `*.microsoft.com` > `[*.]microsoft.com`
    * `*.cloud.microsoft` > `[*.]cloud.microsoft.com`
* "Block access to a list of URLs" changes:
    * Removed unncessary duplicate online Windows app store entries, keeping just `apps.microsoft.com`
    * Added `ms-windows-store://*` as a defence in depth measure to block access to the Windows app store via protocol. Resolves [#253](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/253)
    * Added `javascript://*` to potentially mitigate ClickFix attacks, documented in the Google Chrome DISA STIG. Resolves [#250](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/250)
* Added the following setting to prevent potential [automatic large download of on-device GenAI models](https://www.neowin.net/news/google-chrome-microsoft-edge-could-quietly-download-up-to-20gb-ai-models-on-windows-11/):
    * [Settings for GenAI local foundational model](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/genailocalfoundationalmodelsettings?wt.mc_id=EM-MVP-5005288) - `Enabled`
        * Settings for GenAI local foundational model - `Do not download model`
* Added the following settings to help keep a cleaner address bar and ensure results are relevant:
    * [Enable Microsoft Bing trending suggestions in the address bar](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/addressbartrendingsuggestenabled?wt.mc_id=EM-MVP-5005288) - `Disabled`
    * [Enable Work Search suggestions in the address bar](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/addressbarworksearchresultsenabled?wt.mc_id=EM-MVP-5005288) - `Enabled`
* Added the following settng to ensure the Edge New Tab page shows just organisational content:
    * [Configure whether the Discover or Work feed tabs are shown on the New Tab Page](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/configurentpfeedtabvisibility?wt.mc_id=EM-MVP-5005288) - `Enabled`
        * Configure whether the Discover or Work feed tabs are shown on the New Tab Page. - `Show only the Work feed tab`
* Removed "Enable Gamer Mode" as the setting is obsolete. Resolves [#235](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/235)

#### 🔄️**Win - OIB - SC - Microsoft Office - U - Security**
* Updated to align with the Microsoft 365 Apps Security Baseline v2512.
    * Office:
        * Block Insecure Protocols (User) - `Enabled`
        * Block OLE Graph (User) - `Enabled`
        * Block OrgChart (User) - `Enabled`
        * Restrict Apps from FPRPC Fallback (User) - `Enabled`
    * Excel:
        * File Block includes external link files (User) - `Enabled`
    * PowerPoint:
        * OLE Active Content (User) - `Enabled` - `disable (don't allow activating OLE Active Content)`

#### 🔄️**Win - OIB - SC - Windows Apps - D - In-Box App Removal**
* Changed policy to updated version, "Remove Microsoft Store apps with dynamic list". Selected in-box apps remain the same with the exception of adding `Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe` into the freeform list to pass Graph validation checks.

#### 🔄️**Win - OIB - SC - Windows User Experience - D - Feature Configuration**
* Added "Allow Cross Device Clipboard" set to `Block` to prevent users from sharing clipboard content across devices.

### Endpoint Security
🔄️**Win - OIB - ES - Defender Antivirus - D - AV Configuration**
* Changed "Submit Samples Consent" from `Send safe samples automatically (Default)` to `Send all samples automatically` to align with best practice.
* Changed Remediation Actions for "Moderate" and "High" severity threats from `Remove` to `Quarantine` following several customer interactions that highlighted the need for recoverable handling of potentially non-harmful files.

🔄️**Win - OIB - ES - Defender Antivirus - D - Security Experience**
* Changed "Disable Enhanced Notifications" from `Enabled` to `Disabled` to hide some redundant/unhelpful user notifications following a suggestion from Nathan McNulty: https://x.com/NathanMcNulty/status/2087722656674308316

## Removed 🚮
* Removed the "Win - OIB - Compliance - U - Password - v3.1" compliance policy for reasons documented above.

* Removed the following <24H2 policies with Windows 23H2 being end of support:
    * **Win - OIB - ES - Windows LAPS - D - LAPS Configuration - v3.1**
    * **Win - OIB - SC - Device Security - D - Local Security Policies - v3.0**

---

# Windows v3.8 - 2026-04-16 - IR40 Edition 🎂
> [!IMPORTANT]
> As part of ongoing and future improvements, I am adding a per-policy tracking GUID (OIBID) to the `description` field of every policy, even ones that otherwise haven't changed this version. 
> My intention is to use this in my OIBDeployer (and potentially other tools) to provide richer information, as well as being able to reliably identify existing policies without depending on the policy name.
>
> The GUID is appended to the description in the format `OIBID:<UUID>` and is tracked in a new `WINDOWS/PolicyManifest.json` file in this repository. **Please do not remove or edit this token**, as doing so will break version tracking for that policy.
>
> For those of you who already have the OIB deployed, there is no hard requirement for you to suddenly re-deploy the entire thing in your tenant. There are ways to do so if you're interested: IntuneManagement has an "Update" option on imports which is a Preview feature, a script that does a PATCH on existing policies matched from the PolicyManifest file, or even just upating the Description field manually!.
>
> I'm always very concious of large/breaking changes, but I do think this change will be worth if for the improved tracking and management capabilities it will provide in the long run, and I hope you agree!

## Added 🆕
### Settings Catalog
🆕**Win - OIB - SC - Network Security - D - Disable NTLM - v3.8**
* Added 3 settings to disable NTLM authentication and traffic across the board, following the [Microsoft guidance on Disabling NTLM](https://learn.microsoft.com/en-us/windows-server/security/windows-authentication/ntlm/ntlm-deployment-guide?WT.mc_id=Portal-fx#disable-ntlm-authentication-and-traffic):
    * Network Security LAN Manager Authentication Level - `Send NTLMv2 responses only. Refuse LM and NTLM`
    * Network Security Restrict NTLM Incoming NTLM Traffic - `Deny all accounts`
    * Network Security Restrict NTLM Outgoing NTLM Traffic To Remote Servers - `Deny all accounts`

As of June 2024, NTLM has been marked as deprecated, NTLMv1 has been removed from Windows 11 24H2+, and will soon be disabled by default: [Advancing Windows security: Disabling NTLM by default](https://techcommunity.microsoft.com/blog/windows-itpro-blog/advancing-windows-security-disabling-ntlm-by-default/4489526).

> [!IMPORTANT]
> Disabling NTLM can have a significant impact on your environment if you have legacy applications or services that rely on it, so make sure to do the necessary testing and communication before deploying this.
> If you are unsure, you should [check NTLM audit logs](https://support.microsoft.com/en-gb/topic/overview-of-ntlm-auditing-enhancements-in-windows-11-version-24h2-and-windows-server-2025-b7ead732-6fc5-46a3-a943-27a4571d9e7b) or utilise MDE Advanced Hunting to [detect NTLM usage in your environment](https://www.kqlsearch.com/query/Windows%20-%20Detect%20Ntlm%20Usage%20In%20The%20Environment&cmljgmjja0001y6f58a21rkcf).

🆕**Win - OIB - SC - Windows User Experience - D - Automatic Restart Sign-On - v3.8**
* The following settings have been moved out of the Login and Lock Screen policy and into their own policy to make them easier to find and manage:
    * Sign-in and lock last interactive user automatically after a restart - `Enabled`
    * Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot - `Enabled`
        * Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot - `Enabled if BitLocker is on and not suspended`

[Automatic Restart Sign-On (ARSO)](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/component-updates/winlogon-automatic-restart-sign-on--arso-) is a great user experience feature that allows users to be automatically signed back in after a restart or cold boot, which is particularly useful for devices that are configured to auto-update outside of active hours. I have attempted to balance the user experience benefits of this feature with the security implications by ensuring this only happens if BitLocker is on and not suspended, though use your own judgement in your environment.

The primary reason for moving these settings out is that ARSO has to be explicitly disabled if you want to implement [Personal Data Encryption (PDE)](https://learn.microsoft.com/en-us/windows/security/operating-system-security/data-protection/personal-data-encryption/#prerequisites). Splitting these policies makes decision-making on security choices easier and more managable. Resolves [[#141](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/141)]

### Endpoint Security
🆕**Win - OIB - ES - Windows Firewall - D - Security Rules - v3.8**
* Added 3 rules to block outbound connections for three low-risk applications regularly used as LOLBINs (Living Off The Land Binaries) by attackers:
    * mshta.exe
    * notepad.exe
    * calc.exe

Each rule is configured as follows and has rules for both 32-bit and 64-bit binaries:

    * Direction - The rule applies to outbound traffic.
    * Action - Block
    * Enabled - True
    * Interface Types - All
    * File Path - %systemroot%\{bitness}\{app}.exe
    * Network Types - FW_PROFILE_TYPE_ALL: This value represents all these network sets and any future network sets.
    
This addition was driven by a new Defender Secure Score recommendation ([MC1266905](https://mc.merill.net/message/MC1266905)) specifically for mshta.exe, with calc and notepad being suggestions by MVP Jay Kerai ([@jkerai1](https://github.com/jkerai1))


## Changed/Updated 🔄️
### Settings Catalog
🔄️**Win - OIB - SC - Defender Antivirus - D - Additional Configuration**
* Removed "Intel TDT Enabled" as the setting has been deprecated and is no longer configurable ([PMPC Blog - Intel TDT Deprecated](https://patchmypc.com/blog/intel-tdt-deprecated-defender-csp-error-0x86000002/)). Resolves [[#182](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/182)]

🔄️**Win - OIB - SC - Device Security - D - Login and Lock Screen**
* Changed "Do not display the password reveal button" from `Enabled` to `Disabled` following the updated NIST & CIS guidance rationale provided by [@JackStuart](https://github.com/JackStuart). Resolves [[#146](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/146)]
* Removed settings related to ARSO (Automatic Restart Sign-On) as these have been moved to their own profile.

🔄️**Win - OIB - SC - Microsoft Edge - D - Security**
* Added "Enable Network Prediction" set to `Enabled` and `Don't predict network actions on any network connection`. Resolves [[#163](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/163)] and matches CIS Edge Benchmark setting.
* Added "Enable Microsoft Defender SmartScreen DNS requests" set to `Enabled` to ensure SmartScreen works as expected..
* Changed "Configure users ability to override feature flags" from `Disabled` to `Enabled` as there's a sub-setting that then exists to _actually_ `Prevent users from overriding feature flags`. Thanks Microsoft.
* Removed "InsecurePrivateNetworkRequestsAllowed" as the [setting is obsolete](https://learn.microsoft.com/en-us/DeployEdge/microsoft-edge-browser-policies/insecureprivatenetworkrequestsallowed). Resolves [[#170](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/170)]
* Removed "Enable renderer code integrity" as the setting is deprecated.

🔄️**Win - OIB - SC - Microsoft Edge - U - User Experience**
* Added "Default notification setting (User)" to `Enabled` and `Don't allow any site to show desktop notifications`. Resolves [[#198](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/198)]
* Added "Allow notifications on specific sites" set to `Enabled` with `*.microsoft.com` and `*.cloud.microsoft` configured.
> [!IMPORTANT]
> The above notification settings suggestion came from the WinAdmins Discord as a mitigation against potential malicious or otherwise annoying notification spam but leaving M365 Services capable. Edge is supposed to do this somewhat [automatically](https://blogs.windows.com/msedgedev/2023/07/06/fighting-notification-spam-microsoft-edge/), but this tightens up control significantly. You may have legitimate use-cases for allowing notifications from other sites within your organisation, so make sure to test and adjust as necessary!
* Added "Block access to a list of URLs" set to `Enabled` with various `apps.microsoft.com` URLs as an attempt to prevent users potentially bypassing other Store block policies and downloading them from the website directly.
> [!NOTE]
> This is a super crude way of doing this and does NOT completely stop other ways of users potentially obtaining and installing Store apps. The only true control here is Application Control. 
* Added "Control whether an informational webpage for Edge for Business is shown in the new tab after major browser updates" set to `Disabled` because this isn't really necessary for enterprise users and just creates more noise.
* Removed "Enable Gamer Mode" as the [setting is obsolete](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-browser-policies/gamermodeenabled). Resolves [[#170](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/170)]

🔄️**Win - OIB - SC - Microsoft OneDrive - U - Configuration**
* Added "Start OneDrive automatically when signing in to Windows" set to `Enabled`, overriding the user's ability to turn it off, accidentally or otherwise. Resolves [[#168](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/168)]

🔄️**Win - OIB - SC - Microsoft Store - D - Configuration**
* Changed "Allow All Trusted Apps" from 'Explicit Deny' to 'Explicit Allow Unlock' which was blocking both the EPM agent and OneDrive from installing L1 right-click menu items. Resolves [[#186](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/186)] and [[#50](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/50)]

🔄️**Win - OIB - SC - Windows User Experience - U - Copilot**
* Added "Remove Microsoft Copilot App" set to `Removal Enabled` to trigger removal of the _Consumer_ Copilot app. 
> [!NOTE] 
> As documented, this will only occur if the following conditions are met: 
> * Microsoft 365 Copilot and Microsoft Copilot are both installed
> * The Microsoft Copilot app wasn't installed by the user
> * The Microsoft Copilot app wasn't launched in the last 14 days

🔄️**Win - OIB - SC - Windows User Experience - D - Feature Configuration**
* Added "Disable Share App Promotions" set to `Promotional Apps on ShareSheet are Disabled.` to stop promotional options being visible in the right-click Share menu.
* Added "Do Not Use Web Results" set to `Not allowed. Queries won't be performed on the web and web results won't be displayed when a user performs a query in Search.` to clean up the Start Menu search results.

---

# Windows v3.7 - 2025-10-15 - 25H2 Edition
## Added 🆕
### Settings Catalog
🆕**Win - OIB - SC - Device Security - D - Administrator Protection - v3.7**
* Added configuration to enable the new [Administrator Protection](https://techcommunity.microsoft.com/blog/windows-itpro-blog/administrator-protection-on-windows-11/4303482) feature:
    * User Account Control Behavior Of The Elevation Prompt For Administrator Protection - `Prompt for credentials on the secure desktop`
    * User Account Control Type Of Admin Approval Mode - `Admin Approval Mode with Administrator protection`

> [!IMPORTANT]
> As of writing this, the feature is still flagged as Windows Insider only, but I'm hoping it will be enabled soon and I didn't want that to happen mid-way through a release cycle :)

🆕**Win - OIB - SC - Device Security - D - Printing - v3.7**
* The following settings have been moved out of the Security Hardening profile into their own profile to make them easier to find and manage:
    * Allow Print Spooler to accept client connections - `Disabled`
    * Point and Print Restrictions - `Enabled`
        * Users can only point and print to machines in their forest: (Device) - `False`
        * Users can only point and print to these servers: (Device) - `True`
        * When installing drivers for a new connection: (Device) - `Show warning and elevation prompt`
        * When updating drivers for an existing connection: (Device)- `Show warning and elevation prompt`
    * Limits print driver installation to Administrators - `Enabled`

* The following settings have been added to match the Microsoft Security Baseline and CIS Intune Benchmark:
    * Allow Print Spooler to accept client connections - `Disabled`
    * Configure Redirection Guard - `Enabled`
        * Redirection Guard Options: (Device) - `Redirection Guard Enabled`
    * Configure RPC connection settings
        * Protocol to use for outgoing RPC connections: (Device) - `RPC over TCP`
        * Use authentication for outgoing RPC connections: (Device) - `Default`
    * Configure RPC listener settings - `Enabled`
        * Authentication protocol to use for incoming RPC connections: (Device) - `Negotiate`
        * Protocols to allow for incoming RPC connections: (Device) - `RPC over TCP`
    * Configure RPC over TCP port - `Enabled`
        * RPC over TCP port: (Device) - `0`

🆕**Win - OIB - SC - Windows Apps - D - In-Box App Removal - v3.7**
* Added configuration to remove some in-box apps that are not required in an enterprise environment:
    * Feedback Hub
    * Microsoft Copilot
    * Microsoft News
    * Microsoft Solitaire Collection
    * MSN Weather
    * Quick Assist
    * Xbox Gaming App
    * Xbox Identity Provider
    * Xbox Speech To Text Overlay
    * Xbox TCUI

> [!IMPORTANT]
> This policy only works on Windows 11 **Enterprise** devices

🆕**Win - OIB - SC - Windows User Experience - D - Settings Sync - v3.7**
* Added configuration to support new [Windows Backup for Organizations (WBfO)](https://techcommunity.microsoft.com/blog/windows-itpro-blog/windows-backup-for-organizations-is-now-available/4441655) feature with some minor restrictions.
    * Enable Windows Backup - `Enabled`
    * Do not sync passwords - `Enabled`
        * Allow users to turn "passwords" syncing on. (Device) - `False`
    * Enable Windows Restore - `Enabled`

> [!NOTE]
> This feature needs enabling by navigating to: Devices > Windows > Enrollment > Windows Backup and Restore.
> For more information, see [Windows Backup and Restore - Microsoft Intune | Microsoft Learn](https://learn.microsoft.com/en-gb/intune/intune-service/enrollment/windows-backup-restore)

### Endpoint Security
🆕**Win - OIB - ES - Local Group Membership - D - Local Administrators - v3.7**
* New profile to manage local group membership of the built-in Administrators group, replacing any existing members and only allowing the WLapsAdmin account.
    * Local Group - `Administrators`
    * Group and User Action - `Replace`
    * User selection type - `Manual`
    * Selected user(s) - `WLapsAdmin`

> [!NOTE]
> Autopilot is not a security boundary, and blocking launching a command prompt from within OOBE can negatively impact the troubleshooting capabilities of IT Admins. This means that a savvy or malicious user can create an additional Admin account prior to running through Autopilot. To combat this, it's good practice to ensure that only accounts you explicitly want in the local Administrators group are present.

## Changed/Updated 🔄️
### Settings Catalog
🔄️**Win - OIB - ES - Attack Surface Reduction - D - ASR Rules (L2)**
* Changed "Block use of copied or impersonated system tools" from `Audit` to `Block`
* Changed "Block Office applications from injecting code into other processes" from `Audit` to `Block`
* Changed "Block credential stealing from the Windows local security authority subsystem" from `Audit` to `Block`

🔄️**Win - OIB - ES - Encryption - D - BitLocker (OS Disk)**
* Updated the following setting to align with CIS recommendations. Resolves [80](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/80)
    * Choose how BitLocker-protected operating system drives can be recovered - Do not allow 256-bit recovery key

🔄️**Win - OIB - SC - Device Security - D - Audit and Event Logging**
* Added the following setting from the 25H2 Security Baseline:
    * Include command line in process creation events - `Enabled`

🔄️**Win - OIB - SC - Device Security - D - Security Hardening**
* Added the following new setting from the 25H2 Security Baseline:
    * Disable Internet Explorer 11 as a standalone browser - `Enabled`
        * Notify that Internet Explorer 11 browser is disabled - `Never`
* Added the following Smart Screen-related setting from the CIS Intune Benchmark:
    * Enable Smart Screen In Shell - `Enabled`
    * Prevent Override For Files In Shell - `Enabled`
* Removed the following settings as they have been marked as obsolete and have also been removed from the 25H2 Security Baseline:
    * WDigest Authentication
* The following settings have been removed from this profile and are now found in the new `Win - OIB - SC - Device Security - D - Printing - v3.7` profile:
    * Allow Print Spooler to accept client connections - `Disabled`
    * Point and Print Restrictions - `Enabled`
        * Users can only point and print to these servers - `True`
        * When installing drivers for a new connection - `Show warning and elevation prompt`
        * When updating drivers for an existing connection - `Show warning and elevation prompt`
    * Limits print driver installation to Administrators - `Enabled`

🔄️**Win - OIB - SC - Device Security - D - User Rights**
* Added the following entry to align with OS defaults and [recommendations from the 25H2 Security Baseline](https://techcommunity.microsoft.com/blog/microsoft-security-baselines/windows-11-version-25h2-security-baseline/4456231#:~:text=User%20Rights%20Assignment%20Update%3A%20Impersonate%20a%20client%20after%20authentication):
    * Impersonate client - `S-1-5-99-216390572-1995538116-3857911515-2404958512-2623887229`
> [!NOTE]
> This is the SID for the "RESTRICTED SERVICES\PrintSpoolerService" account. **Huge** thanks to @ajf8729 for managing to decipher this as Microsoft didn't want to document or localise it!

* Added the following settings from v4.0.0 of the CIS Intune Benchmark:
    * Deny Log On As Batch Job - `*S-1-5-32-546`
    * Deny Log On As Service - `*S-1-5-32-546`
    * Shut Down The System - `*S-1-5-32-544,*S-1-5-32-545`
* Changed the following settings to align with v4.0.0 of the CIS Intune Benchmark:
    * Deny Access From Network - `*S-1-5-113,*S-1-5-32-546`
    * Deny Remote Desktop Services Log On - `*S-1-5-113,*S-1-5-32-546`
* Updating the following setting to resolve issue [91](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/91):
    * Increase Scheduling Priority - `*S-1-5-32-544, *S-1-5-90-0`

🔄️**Win - OIB - SC - Device Security - U - Device Guard, Credential Guard and HVCI**
* Changed the following settings from "Without UEFI Lock" to "With UEFI Lock". This now matches both MS and CIS recommendations:
    * Credential Guard
    * Configure Lsa Protected Process
    * Hypervisor Enforced Code Integrity

> [!IMPORTANT]
> There are some implications if you need to disable these settings, however overall this change provides a better security posture.

🔄️**Win - OIB - SC - Microsoft Edge - D - Security**
* Removed the following settings as they have been marked as obsolete. Resolves [101](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/101):
    * Allow the Search bar at Windows startup (obsolete)
    * Minimum TLS version enabled (obsolete)
    * Specifies whether to allow websites to make requests to any network endpoint in an insecure manner (obsolete)

🔄️**Win - OIB - SC - Microsoft Edge - U - User Experience**
* Removed the following settings as they have been marked as obsolete. Resolves [101](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/101):
    * Configure the Microsoft Edge new tab page experience (obsolete)
    * Enable CryptoWallet feature (obsolete)

## Removed 🚮
🚮**Win - OIB - SC - Windows Update for Business - D - Restart Warnings - v3.1**

At some point, Microsoft seems to have changed the documentation for these policies to now state that they are only applicable to Windows 10, and not Windows 11 ([example](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-Update?WT.mc_id=Portal-fx#autorestartnotificationschedule)).
I have raised this with the Product Group to get clarification as this feels like a negative regression in functionality, but for now, I've removed the profile.

🚮**Win - OIB - SC - Google Chrome - D - Security - v3.0 (Deprecated)**

🚮**Win - OIB - SC - Google Chrome - U - Experience and Extensions - v3.0 (Deprecated)**

🚮**Win - OIB - SC - Google Chrome - U - Profiles, Sign-In and Sync - v3.0 (Deprecated)**

After deprecating them in v3.4, I've now removed the Google Chrome profiles from the repo completely.

---

# Windows v3.6 - 2025-05-13 - Post-MMS Edition
## Added
### Settings Catalog
**Win - OIB - SC - Microsoft Office - D - Device Security - v3.6**
**Win - OIB - SC - Microsoft Office - U - User Security - v3.6**

By popular demand, I've added a new set of policies to help secure Microsoft Office on Windows devices. These policies are based on the most recent [Microsoft 365 Apps Security Baseline v2412](https://learn.microsoft.com/en-us/microsoft-365-apps/security/security-baseline) and are designed to enhance the security posture of Office applications.

I have split the policies into two separate profiles: one for Device Security and one for User Security. This allows for more granular control over the security settings applied to Office applications if required.

> [!IMPORTANT]
> These policies are only applicable to Microsoft 365 Apps for Enterprise (included with M365 E*/A*/F*), **not** Microsoft 365 Apps for Business (included with M365 Business Premium).
> This behaviour is [documented here](https://learn.microsoft.com/en-us/microsoft-365-apps/admin-center/overview-cloud-policy#:~:text=You%20can%20create%20a%20policy%20configuration%20for%20Microsoft%20365%20Apps%20for%20business%2C%20but%20only%20policy%20settings%20related%20to%20privacy%20controls%20are%20supported)

>[!WARNING]
> The M365 Apps Security Baseline disables a number of features that may impact user experience, such the use macros, add-ins. Please review the settings and test in a controlled environment before deploying widely!

**Win - OIB - SC - Device Security - D - Local Security Policies (24H2+) - v3.6**
* Exact duplicate of the existing Local Security Policies profile with one difference to support the new LAPS settings while maintaining a good security posture.
    * Accounts Enable Administrator Account Status - `Disable`

### Endpoint Security
**Win - OIB - ES - Windows LAPS - D - LAPS Configuration (24H2+) - v3.6**
* Added the following settings to benefit from the new 24H2 LAPS configuration:
    * Backup Directory - Backup the password to Azure AD only
    * Password Age (Days) - 7
    * Password Complexity - Passphrase (short words with unique prefixes)
        * Passphrase Length - 4
    * Password Length - 21
    * Post-Authentication Actions - Reset the password, logoff the managed account, and terminate any remaining processes
    * Post-Authentication Reset Delay (Hours) - 1
    * Automatic Account Management Enabled - The target account will be automatically managed
        * Automatic Account Management Enable Account - The target account will be automatically managed
        * Automatic Account Management Randomize Name - The name of the target account will not use a random numeric suffix
        * Automatic Account Management Target - Manage a new custom administrator account


## Changed/Updated
### Settings Catalog
**Win - OIB - SC - Defender Antivirus - D - Additional Configuration**
* Added newly added setting from the 24H2 Security Baseline:
    * Enable Dynamic Signature Dropped Event Reporting - `Dynamic Security intelligence update events will be reported.`

**Win - OIB - SC - Device Security - D - Security Hardening**
* Added additional settings now available from the 24H2 Security Baseline:

    **Lanman Server**
    * Audit Client Does Not Support Encryption - `Enabled`
    * Audit Client Does Not Support Signing - `Enabled`
    * Audit Insecure Guest Logon - `Enabled`
    * Auth Rate Limiter Delay In Ms - `2000`
    * Enable Auth Rate Limiter  - `Enabled`
    * Enable Mailslots - `Disabled`
    * Min Smb2 Dialect - `SMB 3.0.0`
    * Max Smb2 Dialect - `SMB 3.1.1`
    
    **Lanman Workstation**
    * Audit Server Does Not Support Encryption - `Enabled`
    * Audit Server Does Not Support Signing - `Enabled`
    * Audit Insecure Guest Logon - `Enabled`
    * Enable Mailslots - `Disabled`
    * Min Smb2 Dialect - `SMB 3.0.0`
    * Max Smb2 Dialect - `SMB 3.1.1`
    * Require Encryption - `Disabled`

**Win - OIB - SC - Device Security - U - Power and Device Lock**
* Removed following settings as they have been removed from the CIS recommendations:
    * Allow standby states (S1-S3) when sleeping (on battery)
    * Allow standby states (S1-S3) when sleeping (plugged in)
    * Allow Hibernate
    * Require use of fast startup

**Win - OIB - SC - Microsoft Edge - D - Security**
* Added the following settings from the Microsoft Edge baseline and CIS Edge Benchmark:
    * Allow download restrictions - `Block Malicious Downloads` (Reduced from "Block malicious downloads and dangerous file types")
    * Automatically open downloaded MHT or MHTML files from the web in Internet Explorer mode - `Disabled`
    * Dynamic Code Settings - `Enabled`
        *Dynamic Code Settings (Device) - `Default Dynamic Code Settings`
    * Enable Application Bound Encryption - `Enabled`
    * Enable browser legacy extension point blocking - `Enabled`
    * Enable site isolation for every site - `Enabled`
    * Enhance the security state in Microsoft Edge - `Enabled`
        * Enhance the security state in Microsoft Edge (Device) - `Balanced Mode`
    * Show the Reload in Internet Explorer mode button in the toolbar - `Disabled`
    * Specifies whether to allow insecure websites to make requests to more-private network endpoints - `Disabled`

* Added the following setting to turn on the new [Scareware Protection](https://blogs.windows.com/msedgedev/2025/01/27/stand-up-to-scareware-with-scareware-blocker/) feature.
    * Configure Edge Scareware Blocker Protection - `Enabled`

**Win - OIB - SC - Microsoft Edge - D - Updates**
* Added "Set the time period for update notifications" configured to `259200000` which is the time in milliseconds (72 hours) before Edge forces a restart to apply a pending update.

**Win - OIB - SC - Microsoft Edge - U - User Experience**
* Removed "Enable full-tab promotional content" as it was deprecated.
* Added "Enable Gamer Mode" set to `Disabled`

**Win - OIB - SC - Microsoft Office - U - Config and Experience**
* Removed deprecated version of "Allow users to receive and respond to in-product surveys from Microsoft".

**Win - OIB - SC - Windows User Experience - U - Copilot**
* Changed "Turn Off Copilot in Windows" from "Enable Copilot" to "Disable Copilot".
> [!NOTE]
> This only impacts the old experience. I recommend also deploying the "Microsoft Copilot" app (9NHT9RB2F4HD) as a required uninstall.
> https://learn.microsoft.com/en-gb/windows/client-management/manage-windows-copilot#policy-information-for-previous-copilot-in-windows-preview-experience

---

# Windows v3.5 - 2025-02-20 - 24H2 Baseline Edition (Mostly)
## Added
### Settings Catalog
**Win - OIB - SC - Device Security - D - Windows Package Manager  - v3.5**
* Added configuration that will be being added to the CIS Benchmark, as well as some additional, non-impacting restrictions to the [Desktop App Installer](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-desktopappinstaller) (winget):
   * Enable App Installer Experimental Features - `Disabled`
   * Enable App Installer Hash Override - `Disabled`
   * Enable App Installer Local Manifest Files - `Disabled`
   * Enable App Installer ms-appinstaller protocol - `Disabled`
   * Enable App Installer Settings - `Disabled`
> [!NOTE]
> If you disable the App Installer completely by setting either "Enable App Installer" or "Enable App Installer Microsoft Store Source" to "Disabled", it **will** break delivery of Store apps from Intune!
> So don't do that :)


## Changed/Updated
### Settings Catalog
**Win - OIB - SC - Defender Antivirus - D - Additional Configuration**
* Added the following settings from the 24H2 Baseline:
    * [Enable Convert Warn To Block](https://learn.microsoft.com/en-gb/windows/client-management/mdm/defender-csp#configurationenableconvertwarntoblock) - `Warn verdicts are converted to block`
    * [Passive Remediation](https://learn.microsoft.com/en-gb/windows/client-management/mdm/defender-csp#configurationpassiveremediation) - `1: Passive Remediation Sense AutoRemediation`
    * [Quick Scan Include Exclusions](https://learn.microsoft.com/en-gb/windows/client-management/mdm/defender-csp#configurationquickscanincludeexclusions) - `1: All files and directories that are excluded from real-time protection using contextual exclusions are scanned during a quick scan.`

**Win - OIB - SC - Device Security - D - Security Hardening**
* Added the following settings from the 24H2 Baseline:
    * [PK Init Hash Algorithm Configuration](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-kerberos#pkinithashalgorithmconfiguration) - `Enabled`
        * PK Init Hash Algorithm SHA1 - `Not Supported`
    * [Enable Sudo](https://learn.microsoft.com/en-us/windows/sudo/) - `Sudo is disabled`

**Win - OIB - SC - Device Security - D - User Rights**
* Removed `S-1-2-0` (Local) from "Deny Remote Desktop Services Log On" as this breaks Windows 365 access. Resolves [#69](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/69)

**Win - OIB - SC - Device Security - U - Device Guard, Credential Guard and HVCI**
* Added the following setting from the 24H2 Baseline:
    * [Machine Identity Isolation](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-DeviceGuard?WT.mc_id=Portal-fx#machineidentityisolation) - `0: (Disabled) Machine password is only LSASS-bound and stored in $MACHINE.ACC registry key.`

**Win - OIB - SC - Microsoft Office - U - Config and Experience**
* Added a recently added setting to make files clicked in Teams open in the desktop apps rather than in SPO:
    * File links open preference default selection as Desktop App (User) - `Enabled`
* Added a setting to remove some options from the save locations available. The tooltip is confusing but `137` restricts OneDrive Personal, SharePoint OnPrem and (most importantly) Third-party Services (e.g Box, Dropbox, Egnyte, ShareFile) from the "Add a place" in the Save As menu.
    * Hide Microsoft cloud-based file locations in the Backstage view (User) - `137`

**Win - OIB - SC - Windows Hello for Business - D - Cloud Kerberos Trust - v3.5**
* Added "Cloud Kerberos Ticket Retrieval Enabled" set to `Enabled`.

---

# Windows v3.4 - 2025-01-24
> [!IMPORTANT]
> A UI change in November '24 has made _**all**_ policy types visible in the Configuration blade. This has caused a lot of confusion when trying to identify policies configured via Endpoint Security.
> [By "popular" demand](https://x.com/SkipToEndpoint/status/1863535554714865747), ALL policies have been renamed to add the policy type into the naming convention which will assist with identifying if the policy actually exists elsewhere:
> 
> **SC** - Settings Catalog<br>
> **ES** - Endpoint Security<br>
> **TP** - Template<br>
>
> To save even more confusion, I've not bumped everything up a whole version because nothing has changed beyond the name, with the exception of the Defender Antivirus Update Rings, which I've had to add version numbers.
> 
> I realise the impact to those with existing versions of the OIB deployed will now be in a situation where you either have to rename all your other policies to match, or rename new ones you import.
> Sorry :(

## Added
### Settings Catalog
**Win - OIB - SC - Device Security - D - Script File Associations - v3.4**
* Added a Default File Associations policy to make the following file types open in notepad by default:
    appx, bat, cab, com, cmd, hta, js, jse, ps1, s1m, sct, shb, shs, wsf, wsh, vbe, vbs
    * Inspired by [this blog](https://kostas-ts.medium.com/my-favourite-security-focused-gpo-stopping-script-execution-with-file-associations-59a05b6d181e) and adapted to use in Intune by taking the file association XML and converting to Base64.
> [!WARNING]
> Deploying will break running any PowerShell scripts from Intune in the User context. Amend policy if this functionality is required.

**Win - OIB - SC - Device Security - U - Windows Sandbox - v3.4**
* Added new available settings to restrict the [Windows Sandbox](https://learn.microsoft.com/en-us/windows/security/application-security/application-isolation/windows-sandbox/windows-sandbox-overview) feature.
I've gone back and forth on this one as there are no security recommendations for Sandbox, though have taken the following into consideration:
    * You have to be an Administrator to enable the feature
    * Sandbox has legitimate and helpful use-cases for IT Admins such as testing installs or via things like [Run In Sandbox](https://github.com/damienvanrobaeys/Run-in-Sandbox)
    * The risk of data exfiltration from the host via the Sandbox is entirely dependent on network connectivity.

    Therefore, the configuration applied **allows** the use of copy and paste/clipboard redirection into the sandbox, but all other settings, including networking are **not allowed**.

    I feel this is a meaningful middleground between making the feature worthless to those who may have a valid use-case.

### Endpoint Security
**Win - OIB - ES - Encryption - U - Personal Data Encryption - v3.4**
* Added in [Intune 2409](https://skiptotheendpoint.co.uk/settings-rundown/intune-settings-rundown-2409/#personal-data-encryption-pde), PDE utilises the user's Windows Hello for Business credentials as a separate encryption key to secure data within OneDrive Known Folders (Documents, Desktop, Pictures)
    As Intune doesn't provide a native way of doing pre-boot BitLocker PIN's, _in my opinion_, PDE is the bridging gap to ensuring important data is properly encrypted in cases of device theft (which is already an edge case).
> [!IMPORTANT]
> **_Please_** do the necessary reading on [what PDE is and the prerequisites and licensing required](https://learn.microsoft.com/en-us/windows/security/operating-system-security/data-protection/personal-data-encryption), and the [MS FAQ](https://learn.microsoft.com/en-us/windows/security/operating-system-security/data-protection/personal-data-encryption/faq) before deploying this policy.

### Template
**Win - OIB - TP - Health Monitoring - D - Endpoint Analytics - v3.4**
* New version of the Health Monitoring template that now only enables Endpoint Analytics. 
    Windows Update data needs to be separately enabled via Tenant Admin > Connectors and Tokens > Windows Data
    https://learn.microsoft.com/en-gb/mem/intune/protect/data-enable-windows-data


## Changed/Updated
### Settings Catalog
**Win - OIB - SC - Defender Antivirus - D - Additional Configuration**
* Added ["Enable File Hash Computation"](https://learn.microsoft.com/en-gb/windows/client-management/mdm/defender-csp?WT.mc_id=Portal-fx#configurationenablefilehashcomputation) set to `Enable` to improve reliability of MDE's IOC detection.
    Recommendation taken from [Ru Campbell](https://x.com/rucam365)'s video, ["Why Your Defender for Endpoint Setup Isn’t Working"](https://www.youtube.com/watch?v=PBy1dxoqakY).

**Win - OIB - SC - Device Security - D - Security Hardening**
* Added the following settings to close some non-impactful gaps against the CIS Benchmark:

    **Administrative Templates > Network > Windows Connection Manager**
    * Minimize the number of simultaneous connections to the Internet or a Windows Domain - `Enabled: 3 = Prevent Wi-Fi when on Ethernet`
    
    **Administrative Templates > Printers**
    * Limits print driver installation to Administrators - `Enabled`
    * Point and Print Restrictions - `Enabled`
        * Users can only point and print to these servers - `True`
        * When installing drivers for a new connection - `Show warning and elevation prompt`
        * When updating drivers for an existing connection - `Show warning and elevation prompt`
    * Allow Print Spooler to accept client connections - `Disabled`
    
    **Wireless Display**
    * Allow Projection from PC - Your PC can discover and project to other devices.
    * Allow Projection to PC - Projection to PC is not allowed. Always off and the user cannot enable it.
    * Require PIN for Pairing - Pairing ceremony for new devices will always require a PIN.

**Win - OIB - SC - Device Security - D - Timezone**
* Changed the User Rights settings to match the defaults of LOCAL SERVICE (`S-1-5-19`), Administrators (`S-1-5-32-544`) and Users (`S-1-5-32-545`). Fixes [#66](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/66)

    Thanks for everyone's input in [Discussion #49](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions/49)!
> [!IMPORTANT]
> Despite this change, there is a current MS-recognised issue in 24H2 where the Time Zone settings are missing to standard users: https://learn.microsoft.com/en-us/windows/release-health/status-windows-11-24h2#date---time-in-window-settings-might-not-permit-users-to-change-time-zone

**Win - OIB - SC - Device Security - D - User Rights**
* Removed the following User Rights settings that were all configured to `(<![CDATA[...]]>)`:
    * "Access Credential Manager as a trusted caller"
    * "Act as part of the operating system"
    * "Create a token object"
    * "Create permanent shared objects"
    * "Enable computer and user accounts to be trusted for delegation"
    * "Lock pages in memory"
    * "Modify an object label"

    All of the above are empty by default on Windows, and it's difficult to tell whether the policy is just silently erroring (as the use of `(<![CDATA[...]]>)` is only valid when using Custom OMA-URI [as per the docs](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-userrights#general-example)) but remaining empty because that's default.
    Either way, it's an enforcement of defaults, and with the difficulty of verifying the policy even works correctly, I'm removing the offending settings until a better solution presents itself.

* Added `*S-1-2-0` to "Deny Remote Desktop Services Log On" to match the CIS recommendation.

* Fixed missing asterisk on `S-1-5-6` of "Create Global Objects". Fixes [#64](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/64)

**Win - OIB - SC - Microsoft Edge - D - Security**
* Added "Configure Edge TyposquattingChecker" set to `Enabled`.
* Added "Allow websites to query for available payment methods" set to `Disabled`.
* Replaced superseded "Allow Download Restrictions" setting with newer version. Maintained the value of `1` (BlockDangerousDownloads).
* Removed "Show Hubs Sidebar" setting as it was duplicated in the User Experience policy.

**Win - OIB - SC - Microsoft Edge - D - User Experience**
* Added "Enable CryptoWallet feature (User)" set to `Disabled`
* Added "Shopping in Microsoft Edge Enabled (User)" set to `Disabled`
* Removed "Show Hubs Sidebar (User)" and "Search in Sidebar enabled (User)" as there must have been a change that now causes them to block the use of the Copilot button.
    * Thanks to [Lewis](https://conditionalaccess.uk/) for reporting and testing the fix to this!

**Win - OIB - SC - Microsoft Store - D - Configuration**
* Added setting "Block Non Admin User Install" set to "Block".

## Endpoint Security
**Win - OIB - ES - Defender Antivirus Updates - Ring `*`**
* All policies have been given the 3.4 version number. No actual policy changes have been made.


## Deprecated
## Settings Catalog
**Google Chrome**

Maintaining a level of parity between Edge and Chrome is difficult, and the OIB Chrome policies were (on purpose) very "Anti Chrome".
My focus will be to ensure the best set of policies for Edge moving forward, and dropping the Chrome policies.

It is my opinion that Edge should be the primary and only browser available in an enterprise environment, and continued efforts by Microsoft to improve the security and managability of Edge for Business backs this up.
My recommendation is to use the [Edge Management Service to "Block other Browsers"](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-management-service-customizations#block-other-browsers) which creates and deploys an AppLocker policy to block the installation or execution of other browsers on corporate devices.


## Removed
### Settings Catalog
**Win - OIB - Network - D - BITS Configuration**
* Provided no value and most things don't even use BITS.

### Template
**Win - OIB - Health Monitoring - D - Endpoint Analytics and Windows Updates - v3.0**
* Recreated with updated settings.

---

# Windows v3.3 - 2024-09-02
## Added
### Endpoint Security
**Win - OIB - Attack Surface Reduction - D - ASR Rules (L2) - v3.3**
* Resolves [#13](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions/13)
* New ASR policy which includes a number of rules that I have had good success with in Block mode.
<br>I don't necessarily want to make Level 1/Level 2 a thing here because I actually care about device usability, but I'm going to refer to this one as such.

> [!WARNING]
> Just because I've had success with these rules, doesn't mean you will!
> 
> If you've been running in Audit mode for a while, there's an amazing blog by [Nathan McNulty](https://x.com/NathanMcNulty), [Defender for Endpoint - Implementing ASR Rules](https://blog.nathanmcnulty.com/defender-for-endpoint-implementing-asr-rules/) which has some great Advanced Hunting queries to help validating if these will have an impact.
> 
> If you haven't: **Please** run the Audit mode policy for a decent amount of time before applying anything!
>
> Additional Microsoft guidance: [Operationalize attack surface reduction rules - Microsoft Defender for Endpoint | Microsoft Learn](https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-deployment-operationalize)


## Changed/Updated
### Settings Catalog
**Win - OIB - Device Security - D - Security Hardening**
* Fixes [#33](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions/33).
* Removed the ["Allow Device Discovery"](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-Experience?WT.mc_id=Portal-Microsoft_Intune_Workflows#allowdevicediscovery) setting which disables the Win+P and Win+K shortcuts, but doesn't actually stop the user from projecting to a device.
    * Thanks to the few people who reported this issue, honestly I'm not sure why I had it in there in the first place...

### Endpoint Security
**Win - OIB - Defender Antivirus - D - AV Configuration**
* Fixes [#32](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions/32).
* Changed the ["Signature Update Interval"](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-Defender?WT.mc_id=Portal-fx#signatureupdateinterval) from 4 hours to 1 hour. 
    * Thanks for bringing to my attention some great work from [Ru Campbell](https://x.com/rucam365) [and Viktor Hedberg](https://x.com/headburgh)'s book, [Mastering Microsoft 365 Defender](https://www.amazon.co.uk/Mastering-Microsoft-365-Defender-Implement-ebook/dp/B0BYZLJFCR?ref_=ast_author_dp), and [Jeffery Appel](https://x.com/jeffreyappel7)'s [blog series](https://jeffreyappel.nl/microsoft-defender-for-endpoint-series-define-the-av-baseline-part4a/) on baselining MDE.

### Policy Descriptions
Aded some additional information to the following policy descriptions to help clarify any issues or hardware/software pre-reqs. Versions have been bumped but no actual policy changes have been made.

* **Win - OIB - Credential Management - D - Passwordless**
* **Win - OIB - Defender Antivirus - D - Security Experience**
* **Win - OIB - Device Security - U - Device Guard, Credential Guard and HVCI**
* **Win - OIB - Microsoft Store - U - Configuration**


## Removed
**Win - OIB - Defender Antivirus - D - Default Exclusions**

Something I'd been curious about for a while was around some (now updated) wording on "built-in exclusions" on the following docs page: [Microsoft Defender Antivirus exclusions on Windows Server - Microsoft Defender for Endpoint | Microsoft Learn](https://learn.microsoft.com/en-us/defender-endpoint/configure-server-exclusions-microsoft-defender-antivirus)
<br> I have subsequently had confirmed by Microsoft that the built-in exclusions do indeed already apply by default to Windows *Client* OS's too, and as such I do not feel the need to have a separate policy for.
<br>I had separately added entries for the IME Content and IME Cache folders, but any exclusion is creating a security hole that could be exploited, so I'm getting rid of the whole thing.

---

# Windows v3.2 - 2024-08-02
## Added
### Settings Catalog
**Win - OIB - Device Security - D - Config Refresh - v3.2**
* Added configuration to enable Config Refresh and re-apply settings on a 30 minute cadence.
> [!NOTE]
> Please read the article to understand the implications of applying this setting:
>
> [Intro to Config Refresh – a refreshingly new MDM feature](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/intro-to-config-refresh-a-refreshingly-new-mdm-feature/ba-p/4176921)

**Win - OIB - Device Security - D - Location and Privacy - v3.2**
* Added configuration to enable the location service while still allowing users to be in control of their privacy settings, but force allow the Settings App and the new Outlook client to access location data.

**Win - OIB - Microsoft Accounts - D - Configuration - v3.2**
* Replaced the user-based policy with a device-based policy with additional settings to restrict the use of MSA's.

**Win - OIB - Windows Hello for Business - D - WHfB Configuration - v3.2**
* The last non-Settings Catalog profile type, Account Protection (Preview) has finally been updated to the Settings Catalog format! The policy does have some changes when compared to the previous version and is also using Device scope settings rather than User, so please review the settings. The new template is also (currently) missing the "Allow biometric authentication" setting, so biometrics are enabled by default providing the device has biometric-capable hardware.


## Changed/Updated
### Settings Catalog
**Win - OIB - Device Security - D - Windows Subsystem for Linux**
* Updated the policy to match the Microsoft recommended settings for WSL documented here: 
<br>[Intune Settings for WSL | Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/intune#recommended-settings)
<br> Thanks to [Peter van der Woude](https://x.com/pvanderwoude) for bringing my attention to the MS documentation.

**Win - OIB - Device Security - U - Power and Device Lock**
* Changed "Allow Hibernate" from "Enabled" to "Disabled". By having Hibernate enabled, "Require use of fast startup" being set to "Disabled" was not actually being enforced, leading to HiberBoot still working.

**Win - OIB - Microsoft OneDrive - D - Configuration**
* Added some additional file types to the block list for sync. Rationale for the additions are due to potential file corruption or security risks.
<br>Added: Access (.accdb, .mdb), Scripts (.bat, .cmd, .vbs), Registry (.reg), Java (.jar), Disk Image (.img, .iso), and Virutal Hard Drive (.vhd, .vhdx, .vmdk).
<br>Thanks to [Jóhannes](https://x.com/jgkps) for the suggestions!
> [!NOTE]
> As always, these are purely recommendations and should be adjusted to suit your environment.

**Win - OIB - Microsoft Store - U - Configuration**
* Removed "Require Private Store Only" setting to match the Microsoft recommendation on restricting access to the Microsoft Store:
<br>[Configure access to the Microsoft Store app - Configure Windows | Microsoft Learn](https://learn.microsoft.com/en-us/windows/configuration/store/?tabs=intune)

### Endpoint Security
**Win - OIB - Defender Antivirus - D - AV Configuration**
* Configured "Metered Connection Updates" to "Allowed" to ensure AV updates are still applied on metered connections.

**Win - OIB - Defender Antivirus - D - Security Experience**
* Added settings to ensure users are prompted via notifications for any actions taken by Defender Antivirus.
<br>To enhance this policy further, consider enabling the Customized Toasts and in-app Customization settings to give users confidence that notifications are legitimate.

## Removed
**Win - OIB - Microsoft Accounts - U - Configuration**
* Replaced by device-based policy, Win - OIB - Microsoft Accounts - D - Configuration - v3.2.

**Win - OIB - Windows Hello for Business - U - WHfB Configuration**
* Replaced by the newer Settings Catalog policy, Win - OIB - Windows Hello for Business - D - WHfB Configuration - v3.2.

---

# Windows v3.1.1 - 2024-04-15

## Changed/Updated
### Settings Catalog
**Win - OIB - Internet Explorer (Legacy) - D - Security**
* Resolved some policies that were mis-aligned with MS Baseline.

**Win - OIB - Microsoft OneDrive - D - Configuration**
* Fixes for #8 and #19.

---

# Windows v3.1 - 2024-04-10

## Added
### Settings Catalog
**Win - OIB - Credential Management - D - Passwordless - v3.1**
* Added device policy to enable passwordless & web sign-in experiences, as well as setting WHfB as the default credential provider. 
> [!WARNING]
> This can have an impact on the use of things like Run as Administrator and LAPS, so if you're doing that or not using WHfB (you should be), don't enable this policy.

**Win - OIB - Defender Antivirus - D - Additional Configuration - v3.1**
* Added a number of settings not configurable via the Defender Antivirus policy in Endpoint Security.
> [!NOTE]
> The "Hide Exclusions from Local Admins/Local Users" settings may make it difficult to troubleshoot issues from the endpoint, but ensure an attacker cannot identify any vulnerable excluded locations. Apply with caution.

**Win - OIB - Device Security - D - Windows Subsystem for Linux - v3.1**
* Added device policy to restrict the use of WSL.

**Win - OIB - Device Security - D - Timezone - v3.1**
* Added device policy to set allow the "Interactive Logon" (S-1-5-4) group to change the timezone, and ensure the Windows NTP Client is enabled.

**Win - OIB - Device Security - D - User Rights - v3.1**
* Added policy to match the CIS L1 Intune Windows 11 baseline settings for User Rights configurations.
> [!NOTE]
> I'm specifically using the [well-known SIDs](https://learn.microsoft.com/en-us/windows/win32/secauthz/well-known-sids) for the settings to ensure they work correctly regardless of the language of the OS. There is currently a requirement to use `(<![CDATA[]]>)` rather than `S-1-0-0` for a "No One" entry due to the way the CSP processes the policy.

**Win - OIB - Network - D - BITS Configuration - v3.1**
* Added setting to enable BITS Peercaching as well as turning on BranchCache and Distributed Cache mode.

**Win - OIB - Windows User Experience - U - Copilot - v3.1**
* Added user policy to allow the use of Copilot (because without M365 Copilot it's just Bing Chat for Enterprise...).

**Win - OIB - Windows Update for Business - D - Restart Warnings - v3.1**
* Added policy to extend the scheduled and imminent restart warnings and force the user to manually dismiss them. No more "I didn't see the warning" excuses.

### Endpoint Security
**Win - OIB - Defender Antivirus - D - Default Exclusions - v3.1**
* Added a default AV exclusions policy based on NCSC recommendations.

### Compliance
Added separate compliance policies to allow for much better granularity and control over compliance grace periods:

**Win - OIB - Compliance - U - Defender for Endpoint - v3.1**
* 0.25 Days/6 Hours Grace Period

**Win - OIB - Compliance - U - Device Health - v3.1**
* 0.5 Days/12 Hours Grace Period

**Win - OIB - Compliance - U - Device Security - v3.1**
* 0.25 Days/6 Hours Grace Period

**Win - OIB - Compliance - U - Password - v3.1**
* No Grace Period/Mark as non-compliant immediately


## Changed/Updated
### Settings Catalog
**Win - OIB - Device Security - D - Audit and Event Logging**
* Aligned settings to match CIS L1.

**Win - OIB - Device Security - D - Login and Lock Screen**
* Removed "Preferred Aad Tenant Domain Name" setting as it can cause certain issues. It also saves you from having to go change it :)

**Win - OIB - Device Security - D - Security Hardening**
* Changed policy "Prohibit installation and configuration of Network Bridge on your DNS domain network" from "Disabled" to "Enabled" as this had been set incorrectly.

**Win - OIB - Device Security - U - Device Guard, Credential Guard and HVCI**
* Added "Configure Lsa Protected Process" setting to "Enabled without UEFI lock.". The reasoning for setting this and other settings to **without** UEFI lock is that it allows for easier troubleshooting and rollback if required, documented [here](https://learn.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection#remove-the-lsa-protection-uefi-variable). It can be set to **with** UEFI lock once satisfied with the configuration.
> [!IMPORTANT]
> Fresh installations of Windows 11 22H2 or later have LSA protection enabled by default:
>
> [Configure added LSA protection | Microsoft Learn](https://learn.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection#automatic-enablement)

**Win - OIB - Internet Explorer (Legacy) - D - Security**
* Amended a number of settings to ensure alignment with the Intune Win11 23H2 baseline and changed from a user-based recommendation to a device-based. Why won't Internet Explorer just die already?

**Win - OIB - Microsoft Edge - U - Extensions**
* Added extension ID's to enable the use of Bing Chat for Enterprise/Copilot.

**Win - OIB - Microsoft Edge - U - User Experience**
* Split from Extensions policy.
* Removed "Enable Discover access to page contents for AAD profiles" that was set to "Disabled" as it's used for Bing Chat/Copilot.

**Win - OIB - Microsoft OneDrive - D - Configuration**
* Added the "Set the sync app update ring" setting configured to "Production" to keep the OneDrive sync client up to date.

**Win - OIB - Microsoft Store - D - Configuration**
* Changed "Allow All Trusted Apps" from "Explicit allow unlock." to "Explicit deny" respectively as per suggestion [here](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions/4) - You'd think "Block" would mean it's blocked, but no, thanks Microsoft.
* Removed "Block Non Admin User Install" and added "MSI Allow User Control Over Install" set to "Disabled".

**Win - OIB - Microsoft Store - U - Configuration**
* Added "Do not allow pinning Store app to the Taskbar (User)" setting configured to "Enabled".
* Removed "Allow apps from the Microsoft app store to auto update" setting as this is configured in the Device-based policy.

**Win - OIB - Windows User Experience - D - Feature Configuration**
* Added "Disable Consumer Account State Content" setting configured to "Enabled"


### Endpoint Security
**Win - OIB - Defender Antivirus - D - AV Configuration**
* Removed deprecated "Allow Intrusion Prevention System" setting.

**Win - OIB - Defender Firewall - D - Firewall Configuration**
* Removed a number of settings to align policy to the CIS L1 Intune Windows 11 baseline settings.

**Win - OIB - Attack Surface Reduction - D - ASR Rules (Audit Mode)**
* Added new preview ASR rules, "Block use of copied or impersonated system tools" and "Block rebooting machine in Safe Mode".

**Win - OIB - Windows LAPS - D - LAPS Configuration**
* Changed the Password Complexity to the "Improved readability" version.


## Removed
**Win - OIB - Microsoft Edge - U - Experience and Extensions**
* Removed in favour of separate Extensions and User Experience policies.

**Win - OIB - WUfB - Insider**
* All Insider Rings removed as they technically fall foul of a "Supported" OS version when considering Cyber Essentials.

**Win - OIB - Compliance - U - Device Compliance**
* Removed both MDE and Non-MDE Compliance policies in favour of splitting them out into separate policies.

---

# Windows v3.0 and Earlier

I'm sorry, but for various reasons I didn't keep a changelog before this point. I'll try to keep one from now on. 
