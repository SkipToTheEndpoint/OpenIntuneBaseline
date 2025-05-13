# OIB Windows Change Log

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
    * Max Smb2 Dialect - `SMB 3.0.0`
    * Min Smb2 Dialect - `SMB 3.1.1`
    
    **Lanman Workstation**
    * Audit Server Does Not Support Encryption - `Enabled`
    * Audit Server Does Not Support Signing - `Enabled`
    * Audit Insecure Guest Logon - `Enabled`
    * Enable Mailslots - `Disabled`
    * Max Smb2 Dialect - `SMB 3.0.0`
    * Min Smb2 Dialect - `SMB 3.1.1`
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
