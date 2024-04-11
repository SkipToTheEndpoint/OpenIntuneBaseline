# Change Log

## v3.1 - 2023-04-10

### <u>Added</u>
#### <u>Settings Catalog</u>
**Win - OIB - Credential Management - D - Passwordlesss - v3.1**
* Added device policy to enable passwordless & web sign-in experiences, as well as setting WHfB as the default credential provider. 
<br> **NOTE:** This can have an impact on the use of things like Run as Administrator and LAPS, so if you're doing that or not using WHfB (you should be), don't enable this policy.

**Win - OIB - Defender Antivirus - D - Additional Configuration - v3.1**
* Added a number of settings not configurable via the Defender Antivirus policy in Endpoint Security.
<br> **NOTE:** The "Hide Exclusions from Local Admins/Local Users" settings may make it difficult to troubleshoot issues from the endpoint, but ensure an attacker cannot identify any vulnerable excluded locations. Apply with caution.

**Win - OIB - Device Security - D - Windows Subsystem for Linux - v3.1**
* Added device policy to restrict the use of WSL.

**Win - OIB - Device Security - D - Timezone - v3.1**
* Added device policy to set allow the "Interactive Logon" (S-1-5-4) group to change the timezone, and ensure the Windows NTP Client is enabled.

**Win - OIB - Device Security - D - User Rights - v3.1**
* Added policy to match the CIS L1 Intune Windows 11 baseline settings for User Rights configurations.
<br> **NOTE:** I'm specifically using the [well-known SIDs](https://learn.microsoft.com/en-us/windows/win32/secauthz/well-known-sids) for the settings to ensure they work correctly regardless of the language of the OS. There is currently a requirement to use `(<![CDATA[]]>)` rather than `S-1-0-0` for a "No One" entry due to the way the CSP processes the policy.

**Win - OIB - Network - D - BITS Configuration - v3.1**
* Added setting to enable BITS Peercaching as well as turning on BranchCache and Distributed Cache mode.

**Win - OIB - Windows User Experience - U - Copilot - v3.1**
* Added user policy to allow the use of Copilot (because without M365 Copilot it's just Bing Chat for Enterprise...).

**Win - OIB - Windows Update for Business - D - Restart Warnings - v3.1**
* Added policy to extend the scheduled and imminent restart warnings and force the user to manually dismiss them. No more "I didn't see the warning" excuses.

#### <u>Endpoint Security</u>
**Win - OIB - Defender Antivirus - D - Default Exclusions - v3.1**
* Added a default AV exclusions policy based on NCSC recommendations.

#### <u>Compliance</u>
Added separate compliance policies to allow for much better granularity and control over compliance grace periods:

**Win - OIB - Compliance - U - Defender for Endpoint - v3.1**
* 0.25 Days/6 Hours Grace Period

**Win - OIB - Compliance - U - Device Health - v3.1**
* 0.5 Days/12 Hours Grace Period

**Win - OIB - Compliance - U - Device Security - v3.1**
* 0.25 Days/6 Hours Grace Period

**Win - OIB - Compliance - U - Password - v3.1**
* No Grace Period/Mark as non-compliant immediately

### <u>Changed</u>
#### <u>Settings Catalog</u>
**Win - OIB - Device Security - D - Audit and Event Logging**
* Aligned settings to match CIS L1.

**Win - OIB - Device Security - D - Login and Lock Screen**
* Removed "Preferred Aad Tenant Domain Name" setting as it can cause certain issues. It also saves you from having to go change it :)

**Win - OIB - Device Security - D - Security Hardening**
* Changed policy "Prohibit installation and configuration of Network Bridge on your DNS domain network" from "Disabled" to "Enabled" as this had been set incorrectly.

**Win - OIB - Device Security - U - Device Guard, Credential Guard and HVCI**
* Added "Configure Lsa Protected Process" setting to "Enabled without UEFI lock.". The reasoning for setting this and other settings to **without** UEFI lock is that it allows for easier troubleshooting and rollback if required, documented [here](https://learn.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection#remove-the-lsa-protection-uefi-variable). It can be set to **with** UEFI lock once satisfied with the configuration.
<br> **NOTE:** Fresh installations of Windows 11 22H2 or later have LSA protection enabled by default: [Configure added LSA protection | Microsoft Learn](https://learn.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection#automatic-enablement)

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
* Changed "Block Non Admin User Install" and "Allow All Trusted Apps" from "Block" to "Allow" and "Explicit allow unlock." to "Explicit deny" respectively as per suggestion [here](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions/4) - You'd think "Block" would mean it's blocked, but no, thanks Microsoft.

**Win - OIB - Microsoft Store - U - Configuration**
* Added "Do not allow pinning Store app to the Taskbar (User)" setting configured to "Enabled".
* Removed "Allow apps from the Microsoft app store to auto update" setting as this is configured in the Device-based policy.

**Win - OIB - Windows User Experience - U - Feature Configuration**
* Added "Enable dev drive" setting configured to "Disabled"

#### <u>Endpoint Security</u>
**Win - OIB - Defender Antivirus - D - AV Configuration**
* Removed deprecated "Allow Intrusion Prevention System" setting.

**Win - OIB - Defender Firewall - D - Firewall Configuration**
* Removed a number of settings to align policy to the CIS L1 Intune Windows 11 baseline settings.

**Win - OIB - Attack Surface Reduction - D - ASR Rules (Audit Mode)**
* Added new preview ASR rules, "Block use of copied or impersonated system tools" and "Block rebooting machine in Safe Mode".

**Win - OIB - Windows LAPS - D - LAPS Configuration**
* Changed the Password Complexity to the "Improved readability" version.


### <u>Removed</u>
**Win - OIB - Microsoft Edge - U - Experience and Extensions**
* Removed in favour of separate Extensions and User Experience policies.

**Win - OIB - WUfB - Insider**
* All Insider Rings removed as they technically fall foul of a "Supported" OS version when considering Cyber Essentials.

**Win - OIB - Compliance - U - Device Compliance**
* Removed both MDE and Non-MDE Compliance policies in favour of splitting them out into separate policies.

---

## v3.0 and Earlier

I'm sorry, but for various reasons I didn't keep a changelog before this point. I'll try to keep one from now on. 
