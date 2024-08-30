# OIB MacOS Change Log

# MacOS v1.0 Release - 2024-09-02
As per PR [#35](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/pull/35) by @ugurkocde

## Changed/Updated
### Settings Catalog
**MacOS - OIB - Defender Antivirus - D - Antivirus Configuration**
* Changed the setting “Show / hide status menu icon” from enabled to disabled: Set to disabled so the icon is displayed in the menu bar, allowing users to see the status and manually force updates if needed. Key is hideStatusMenuIcon, so disable (default) shows the icon in the menubar.

**MacOS - OIB - Device Security - D - Accounts and Login**
* Changed the setting “Hide Admin Users” from true to false: Setting "Hide Admin Users" to true is super annoying. Most users are still local admins on their macOS devices, and when trying to log in, the username is not pre-filled, requiring manual entry on the login screen.

**MacOS - OIB - Disk Encryption - D - FileVault**
* Added “Recovery Key Rotation In Months” and set it to 6 months. This makes it more secure and aligns with a lot of the security baseline in enterprises (same with Bitlocker Key rotation on Windows Devices)
Removed Defer setting as this causes problems activating it in the Setup Assistant. Despite what Microsoft Techcommunity suggests, it works better without it.

**MacOS - OIB - Firewall - D - Gatekeeper**
* Changed the setting “Allow Identified Developers” (Gatekeeper) from false to true: Some apps are installed with scripts, like Company Portal and M365. Setting "Allow Identified Developers" to false means only Apps from the App Store are allowed.
Changed the setting “Block all incoming” (Firewall) from true to false. This prevents connection issues with devices on the same network, e.g., AirPrint, headphones, and external displays or TVs.

* Enabled the setting “Guard against app modification” to enable delta updates.
Changed Update Channel from Current Channel to Current Channel (Monthly). This is the monthly enterprise channel on Windows M365 apps.
Changed the setting for “Updater optimization technique” from Lower network overhead to Lower processor overhead. This is because updates are only installing beta updates when Guard against app modification is enabled, and most problems users experience are related to processor performance (e.g., the device getting warmer and slower).

**MacOS - OIB - Microsoft OneDrive - D - Service and Access**
* Login → Service Management - Managed Login Items:
<br>> Removed 2 Rules besides OneDrive (Standalone) and Launcher. KFM is only supported for the Standalone version that is part of the M365 Apps installation. You can only run one instance of OneDrive at a time, so it doesn't make sense to manage all different versions, in my opinion.
Changed the Rule Type of OneDrive Standalone from Label to Label Prefix.
* Privacy → Privacy Preferences Policy Control:
<br>>Removed the identifier for com.microsoft.OneDrive-mac, which is the Store App that does not support KFM.
* System Configuration → System Extension:
<br>>Removed com.microsoft.OneDrive-mac.FinderSync from the identifier as this is not needed.

**MacOS - OIB - Microsoft OneDrive - U - Known Folder Move**
Added the setting “Open at login” and set it to True. This automatically starts OneDrive after the user signs in.

## Removed
### Settings Catalog
**MacOS - OIB - Microsoft Office - D - Updates - v1.0**
* Policy not needed as those apps are getting auto-registered into MAU. Only necessary if using different update channels for these apps, but generally not advised. The MAU Configuration is perfectly fine.

---

# MacOS v1.0 Beta - 2024-08-22
Initial release for testing and feedback.