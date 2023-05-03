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
</p>

---
<sup>**IMPORTANT:-** This has been developed as a starting point or foundation and is not necessarily considered "complete". It is being made available to allow learning, development, and knowledge-sharing amongst communities.<br>
No liability is assumed for the usage or application of the settings within this project in production tenants.</sup>

---

## Rationale
The original purpose of this baselin was to develop a single-import "policy set" which covered all necessary configuration to provide a secure Windows device with minimal engineering effort. Additional settings to improve overall end-user experience were added, such as OneDrive KFM and automatic Outlook configuration.

After seeing many people across varying communities struggle with the initial "barrier to entry" to Intune, especially coming from a knowledge set around on-prem GPO, I wanted to make the pack publicly available to enable easier access to learning the functionality available.


## Development
To create the initial secure device configuration, data analysis was carried out over the following well-known security guidance frameworks, such as:

* NCSC Device Security Guidance [https://www.ncsc.gov.uk/collection/device-security-guidance/platform-guides/windows]
* CIS Windows Benchmarks [https://www.tenable.com/audits/search?q=CIS+Windows+Intune&sort=&page=1]
* Intune Security Baselines for Windows, Edge & Defender for Endpoint [https://endpoint.microsoft.com/#blade/Microsoft_Intune_Workflows/SecurityManagementMenu/securityBaselines]
* Microsoft Best Practice

Additional configurations were then layered using information from various MVP blogs and community resources, as well as significant personal experience across multiple customer environments.


## Available Baseline Settings
Policies are configured and named to be as understandable to their purpose as possible. 
More information will be available soon.


## Baseline Import
The baseline was exported using the tool developed by Mikael Karlsson ([GitHub](https://github.com/Micke-K/IntuneManagement) and [Twitter](https://twitter.com/Micke_K_72)), and can be imported in the same way.
Download or clone this repo, run the IntuneManagement tool and in the tool settings, change the "Root folder" under Import/Export to the folder of the baseline. Authenticate to a tenant with appropriate credentials, and use the Bulk>Import menu to import the whole baseline. Individual policy imports can be achieved using the "Import" option in the bottom right of the tool.


## Supporting Configuration:
- **Windows Update for Business Reports** - With an appropriate Azure subscription, a Log Analytics Workspace can be created to monitor update compliance of devices. - [Additional information](https://learn.microsoft.com/en-us/windows/deployment/update/wufb-reports-overview) 
- **M365 Apps Updates** - Creation of a [Servicing Profile](https://docs.microsoft.com/en-gb/deployoffice/admincenter/servicing-profile) through [config.office.com](https://config.office.com/officeSettings/serviceprofile) can ensure Office Apps for Business/Enterprise remain up-to-date on the Monthly Enterprise Channel. Settings in the "Office - Update Settings" policy can remain as Servicing Profiles take priority of any other Office management. Ensure the [Inventory](https://config.office.com/officeSettings/inventory) is enabled.


#### Settings not covered by the baseline:
Due to the wildly differing nature of environments, it is not possible to create a "baseline" for AppLocker or Windows Defender Application Control. While the baseline ensures standard users cannot elevate to install applications, apps that do not require elevation or install to a user's AppData folder may not be blocked.


## Additional Notes:
There are some settings that fall outside of this baseline, however should be considered to ensure underlying tenant security:

| Setting  | Link |
| ------------- | ------------- |
| Combined user registration (now set to "All" by default but may be set to "None" or scoped to groups for older tenants)  | [User Features](https://portal.azure.com/#view/Microsoft_AAD_IAM/FeatureSettingsBlade)  |
| Restrict access to Azure AD administration portal  | [User Settings](https://portal.azure.com/#view/Microsoft_AAD_UsersAndTenants/UserManagementMenuBlade/~/UserSettings)  |
| Enable SSPR for All Users  | [Password Reset](https://portal.azure.com/#view/Microsoft_AAD_IAM/PasswordResetMenuBlade/~/Properties)  |
| Disable user admin consent requests  | [Enterprise Apps](https://portal.azure.com/#view/Microsoft_AAD_IAM/StartboardApplicationsMenuBlade/~/UserSettings/menuId~/null)  |
| Do not allow users to consent to apps  | [Consent and Permissions](https://portal.azure.com/#view/Microsoft_AAD_IAM/ConsentPoliciesMenuBlade/~/UserSettings)  |
| AAD Company Branding (can cause Autopilot to fail)  | [Company Branding](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/LoginTenantBranding)  |
| Disable Security Defaults (if utilising Conditional Access)  | [Properties](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/Properties)  |
| Ensure legacy "per-user" MFA is disabled  |  [Multi-factor Authentication](https://account.activedirectory.windowsazure.com/usermanagement/multifactorverification.aspx)  |

---

## Changelog
See [CHANGELOG.MD](/CHANGELOG.md) for latest baseline changes.