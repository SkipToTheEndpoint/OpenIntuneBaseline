# OpenIntuneBaseline

<p align="center">
  <a href="https://twitter.com/SkipToEndpoint">
    <img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/SkipToEndpoint?label=Follow%20%40SkipToEndpoint&logo=Twitter&style=flat-square" target="_blank" />
  </a>
  <a href="https://skiptotheendpoint.co.uk">
    <img alt="Twitter Follow" src="https://img.shields.io/badge/Read%20my%20blog-grey?style=flat-square&logo=ghost" target="_blank" />
  </a>
</p>
<p align="center">
  <a href="https://discord.gg/msems">
    <img alt="Discord" src="https://img.shields.io/discord/1008077287813550090?label=Join%20the%20MS%20EMS%20Community&logo=discord&style=flat-square" target="_blank" />
  </a>
  <a href="https://discord.gg/winadmins">
    <img alt="Discord" src="https://img.shields.io/discord/618712310185197588?label=Join%20WinAdmins&logo=discord&style=flat-square" target="_blank" />
  </a>
</p>

---
<sup>**IMPORTANT:-** This has been developed as a starting point or foundation and is not necessarily considered "complete". It is being made available to allow learning, development, and knowledge-sharing amongst communities.<br>
No liability is assumed for the usage or application of the settings within this project in production tenants.</sup>

---

## Project Rationale
The original purpose of this baseline was to develop a single-import "policy set" which covered all necessary configuration to provide a secure Windows device with minimal engineering effort. Additional settings to improve overall end-user experience were added, such as OneDrive KFM and automatic Outlook configuration.

After seeing many people across varying communities struggle with the initial "barrier to entry" to Intune, especially coming from a knowledge set around on-prem GPO, I wanted to make the pack publicly available to enable easier access to learning the functionality available.


## Development
To create the initial secure device configuration, substantial data analysis was carried out over well-known security guidance frameworks, such as:

* [NCSC Device Security Guidance](https://www.ncsc.gov.uk/collection/device-security-guidance/platform-guides/windows)
* [CIS Windows Benchmarks](https://www.tenable.com/audits/search?q=CIS+Windows+Intune&sort=&page=1)
* [ACSC Essential Eight](https://www.cyber.gov.au/resources-business-and-government/essential-cyber-security/essential-eight)
* [Intune Security Baselines for Windows, Edge & Defender for Endpoint](https://endpoint.microsoft.com/#blade/Microsoft_Intune_Workflows/SecurityManagementMenu/securityBaselines)
* [Microsoft Best Practice](https://learn.microsoft.com/en-us/windows/security/operating-system-security/device-management/windows-security-configuration-framework/windows-security-baselines)

Additional configurations were then layered using information from various MVP blogs and community resources, as well as significant personal experience across multiple customer environments.

## Intended Use-Case
The baseline has been designed for, and tested on a cloud-native Windows 11 device (Entra Joined, Intune Managed), though should also work on Windows 10. It is **not** designed for hybrid environments, and will likely not work as expected or intended on hybrid-joined devices.

It is _**Microsoft's recommendation**_ that you move to cloud-native for new devices: https://aka.ms/CloudNativeEndpoints

I would always recommend maintaining GPO for on-prem devices, and using Intune for cloud-native devices, with the exception of things like Endpoint Analytics, Windows Update for Business and Application Deployment. Applying Intune policy over the top of GPO can cause unexpected results, and should be avoided where possible. Similarly, GPOs may well leave registry keys behind that can cause unexpected results when applying Intune policy.

---

## Baseline Security Posture
Security frameworks tend to be seen as unmovable hard requirements rather than what they are, which is a set of **recommendations**. In fact, the CIS themselves preface their benchmarks with the following:

> It is acceptable if 100% of the benchmark is not applied, as it is the responsibility and 
decision of each organization to determine which settings are applicable to their unique 
needs.

It is impossible to create a true "one-size-fits-all" set of policies due to the massively differing nature of enterprise requirements. There is also a significant amount of "noise" in the security community, with many recommending settings that are not necessarily required or beneficial, such as enforcing default behaviour that a standard user cannot change, or settings that have been included in GPO baselines since the days of Windows 7. 
This baseline is designed to be a starting point or guide, and all configurations applied to an environment regardless of source should be reviewed and adjusted to suit your own business requirements.

### Notable Deviations
There are some notable deviations from security guidance frameworks. These are detailed below:

| Policy | Setting Name | Framework Recommendation | Baseline Setting | Rationale |
|---|---|---|---|---|
| Device Security - Local Security Policies |  |  |  |  |
|  | Accounts Enable Administrator Account Status | Disabled | Enabled | Allows usage of Windows LAPS without additional configuration or creating a new local user account. |
|  | User Account Control Behavior Of The Elevation Prompt For Standard Users | Automatically deny elevation requests | Prompt for credentials on secure desktop | Maintains standard helpdesk remote support processes capabilities. |

### Security Recommendations
The results of the Defender for Endpoint Security Recommendations page on a baseline-configured device can be viewed below:

[export-tvm-security-recommendations.csv](/export-tvm-security-recommendations.csv)

Please note that **all** security tools, including Microsoft's own seem to have problems with the fact that CSP's put settings in different registry key locations. This is not an issue with the baseline, and is something that needs to be addressed by the security tool vendors. See the FAQ for more information:

[Security tool _y_ says setting _x_ is not configured but Intune says it's applied correctly!](/FAQ.md#security-tool-y-says-setting-x-is-not-configured-but-intune-says-its-applied-correctly)

---

## Available Baseline Settings
Policies are configured and named to be as understandable to their purpose as possible. The naming scheme in place is as follows:

| OS | | Identifier | | Category | | Device/User Assignment | | Sub-Category | | Version |
|:---:|:-:|:---:|:-:|:---:|:-:|:---:|:-:|:---:|:-:|:---:|
| Win | - | OIB | - | Device Security | - | D | - | Login and Lock Screen | - | v3.0 |

Documenting all settings is still a work in progress, but the following is a list of the high-level settings covered:

* Core device security hardening
* Device Encryption via BitLocker
* Google Chrome (Note: Policies are quite "Anti-Chrome" to encourage the use of Edge)
* Microsoft Edge (Split into multiple policies for easier management)
* Microsoft Office (Including OneDrive Known Folder Move)
* Microsoft Defender for Endpoint (AV, Firewall, ASR Rules)
* Windows LAPS
* Windows Update for Business (Delivery Optimisation, Telemetry & WUfB Reports)
* Windows Update Rings (3-ring model of Pilot, UAT & Production)
* Windows Hello for Business

Almost all policies are Settings Catalog-backed and will show in Devices>Configuration Profiles, however the following will appear in the Endpoint Security section of Intune:
* Defender Antivirus
* BitLocker Encryption
* Windows Firewall
* Windows Hello for Business
* Windows LAPS

Guidance on settings can be found in the [Settings Guidance](/SETTINGSGUIDANCE.md) document.

## Limitations:
Due to the wildly differing nature of environments, it is not possible to create a "baseline" for AppLocker or Windows Defender Application Control (WDAC). While the baseline ensures standard users cannot elevate to install applications, apps that do not require elevation or install to a user's AppData folder may not be blocked.

## Supporting Configuration:
- **Windows Autopatch** - If your licensing supports it, I would **strongly** recommend implementing Autopatch for management of your Windows Quality, Driver and Feature updates. - [Autopatch Overview](https://learn.microsoft.com/en-us/windows/deployment/windows-autopatch/overview/windows-autopatch-overview)
- **Windows Update for Business Reports** - With an appropriate Azure subscription, a Log Analytics Workspace can be created to monitor update compliance of devices. - [Additional information](https://learn.microsoft.com/en-us/windows/deployment/update/wufb-reports-overview) 
- **M365 Apps Updates** - Enabling [Cloud Update](https://learn.microsoft.com/en-us/deployoffice/admincenter/cloud-update) through [config.office.com](https://config.office.com/officeSettings/serviceprofile) can ensure Office Apps for Business/Enterprise remain up-to-date on the Monthly Enterprise Channel. Settings in the "Office - Update Settings" policy can remain as Cloud Update takes priority over any other Office management. Ensure the [Inventory](https://config.office.com/officeSettings/inventory) is enabled.

---

## Importing the Baseline:
The baseline was exported using the tool developed by Mikael Karlsson ([GitHub](https://github.com/Micke-K/IntuneManagement) and [Twitter](https://twitter.com/Micke_K_72)), and can be imported in the same way.
Download or clone this repo, run the IntuneManagement tool and in the tool settings, change the "Root folder" under Import/Export to the appropriate folder of the baseline. Authenticate to a tenant with appropriate credentials, and use the Bulk>Import menu to import the whole baseline. Individual policy imports can be achieved using the "Import" option in the bottom right of the tool.

You can choose to import as much or as little of the baseline as you wish, though you will need to change the "Root folder" to the appropriate folder for the policies you wish to import (e.g. Settings Catalog).

## Post-Import Changes:
As of v3.1 there are no post-import changes required as the IntuneManagement tool will automatically modify the Tenant GUIDs included in OneDrive policies based on the tenant.

## Additional Information:
Please consult the [FAQ](/FAQ.md)
