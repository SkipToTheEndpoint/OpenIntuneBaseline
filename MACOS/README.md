# OpenIntuneBaseline - MacOS

<img src="https://raw.githubusercontent.com/ugurkocde/intunemacadmins/main/public/favicon.svg" width="100">

Developed in collaboration with [IntuneMacAdmins](https://www.intunemacadmins.com/)

## Intended Use-Case
The baseline has been designed and tested on the following scenario:

### Device:
* MacOS 14.6 or above on Apple Silicon
* Enrolled into Apple Business Manager 
* ADE Deployment with the following configured:
    * Management Settings:
        * Enroll with User Affinity
        * Setup Assistant with Modern Authentication
        * Await Final Configuration -Yes
        * Locked Configuration - Yes
    * Setup Assistant:
        * FileVault - Show
        * Touch ID - Show
* M365 Apps deployed via VPP

### User:
* Cloud-Only or Hybrid Identity with Entra ID as IdP
* MFA configured via Conditional Access

### Licensing:
* M365 Business Premium or M365 E5/A5, or M365 E3/A3 + MDE P1/P2 
<br>**OR**:
    * Entra ID P1 or P2
    * Office 365 E3/E5, A3/A5 or F3
    * Intune P1
    * Defender for Business or Endpoint P1/P2

> [!IMPORTANT]
> Successful application of the baseline outside of this configuration cannot be guaranteed.

---

## Importing the Baseline:
Please reference [Importing the Baseline](/README.md#importing_the_baseline) for information.

### Post-Import Configuration
There are some settings that require manual configuration or creation post-import. These are detailed in [SETTINGSGUIDANCE](/MACOS/SETTINGSGUIDANCE.md).

---

## Baseline Security Posture
Primary information regarding adherence to security frameworks can be found in the main repo [README](/README.md#security-framework-adherence).

### Included Settings
* Entra Join and Authentication via Platform SSO Secure Enclave
* Core device security restrictions
* Device Encryption via FileVault
* Microsoft Edge (Split into multiple policies for easier management)
* Microsoft Office (Including OneDrive Known Folder Move)
* Microsoft Defender for Endpoint
* Update Configuration

All policies are Settings Catalog and will show in Devices>Configuration Profiles.

For a complete list of settings, please consult [SETTINGSOUTPUT](/MACOS/SETTINGSOUTPUT.md).

---

## Additional Information:

> [!TIP]
> Please visit [IntuneMacAdmins](https://www.intunemacadmins.com/) for additional information on MacOS management with Intune.

---

## [Change Log](/MACOS/CHANGELOG.md)