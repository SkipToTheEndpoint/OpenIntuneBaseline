# OIB Windows Change Log

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
