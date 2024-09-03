# OpenIntuneBaseline - Windows 365

## Intended Use-Case
The baseline has been designed for, and tested on the following:

### Device:
* Windows 11 Enterprise 23H2 Gallery Image
* W365 Provisioning Policy configuration:
    * License Type - Enterprise
    * Join Type - Microsoft Entra Joined
    * Network - Microsoft Hosted Network
    * Use Microsoft Entra single sign-on - Yes

### User:
* Cloud-Only or Hybrid Identity with Entra ID as IdP
* MFA configured via Conditional Access
* User is not an Administrator

### Licensing:
* M365 Business Premium or M365 E5/A5, or M365 E3/A3 + MDE P1/P2 
<br>**OR**:
    * Entra ID P1 or P2
    * Office 365 E3/E5, A3/A5 or F3
    * Intune P1
    * Defender for Business or Endpoint P1/P2
* An appropriate Windows 365 Enterprise SKU

Access to the W365 host has been tested using the Windows App via a client also running the Windows OIB.

> [!NOTE]
> The Windows 365 OIB is designed to work as **an addition** to the [Windows OIB](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/main/WINDOWS). It is recommended to assign the W365 host all Windows OIB policies with the exception of:
> * BitLocker
> * Device Health Compliance Policy
>
> The above can be achieved using group assignments or Intune filters.

> [!WARNING]
> The Windows 365 OIB is not designed to protect corporate data if accessed via a **non-corporate** device.

---

## Importing the Baseline:
Please reference [Importing the Baseline](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/wiki#importing-the-baseline) for information.

---

## Baseline Security Posture
Primary information regarding adherence to security frameworks can be found in the main [README](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/wiki#security-framework-adherence).

The Windows 365 OIB has been created with the following Microsoft documentation as guidance:
* https://learn.microsoft.com/en-us/windows-365/enterprise/configure-single-sign-on
* https://learn.microsoft.com/en-us/windows-365/enterprise/security-guidelines
* https://learn.microsoft.com/en-us/windows-365/enterprise/manage-rdp-device-redirections
* https://learn.microsoft.com/en-us/windows-365/enterprise/rdp-shortpath-public-networks

### Included Settings
* Connectivity configuration
* Resource redirection including restricting clipboard transfer from server to client
* W365-specific Device Health Compliance policy

All policies are Settings Catalog and will show in Devices>Configuration Profiles.

For a complete list of settings, please consult [SETTINGSOUTPUT](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/blob/main/WINDOWS365/SETTINGSOUTPUT.md).

---