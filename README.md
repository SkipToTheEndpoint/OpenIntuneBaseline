# OpenIntuneBaseline
<sup>**NOTE** :- This has been developed as a starting point or foundation and is not necessarily considered "complete". It is being made available to allow learning, development, and knowledge-sharing amongst communities. 
I assume no liability for the usage or application of the settings within this project in production tenants.<sup>
---

## Baseline Purpose
The original purpose of this settings pack was a single-import baseline policy which covers all necessary configuration to provide a secure Windows device with minimal engineering effort. This expanded to a wider Intune platform configuration, and eventually broadened further to cover Azure AD Conditional Access to ensure the security of the underlying tenant. Additional settings to improve overall end-user experience were added, such as OneDrive KFM and automatic Outlook configuration.

After seeing many people across varying communities struggle with the initial "barrier to entry" to MEM, especially coming from a knowledge set around on-prem, I wanted to make the pack available to enable easier access to learning the functionality available.

## Development
Data analysis was carried out over the reference materials below:
* NCSC Device Security Guidance [https://www.ncsc.gov.uk/collection/device-security-guidance/platform-guides/windows]
* CIS Windows Desktop L1 Benchmark [https://www.cisecurity.org/benchmark/microsoft_windows_desktop]
* Intune Security Baselines for Windows, Edge & Defender for Endpoint [https://endpoint.microsoft.com/#blade/Microsoft_Intune_Workflows/SecurityManagementMenu/securityBaselines]
* Microsoft Best Practice
* Various MVP blogs and community resources

## Available Baseline Settings
- **Azure AD Conditional Access** - Three baseline CA policies to block legacy auth, enfore App Protection Policies, and require MFA for all users but exclude the Intune Enrolment for improved user experience.
- **Autopilot Profile** - Azure AD Joined with a name template of %SERIAL%.
- **Enrollment Status Page** - Default ESP disabled. Autopilot Device ESP configured. Reduced timeout to 30 minutes.
- **Device Enrolment Restrictions** - All platforms blocked. Devices going through Autopilot [bypass enrolment restrictions](https://learn.microsoft.com/en-gb/mem/intune/enrollment/enrollment-restrictions-set).
- **Compliance Policy** - Four available, depending on usage of Windows Hello and Defender for Endpoint.
- **Windows Configuration Profile Pack** - Logically-arranged policies to hit relevant security baseline concepts (excluding AppLocker/WDAC). Almost all policies are configured via the Settings Catalog or Endpoint Security.
- **Windows Update for Business** - Pilot/UAT/Prod Update Rings to ensure OS update compliance, and Feature Update policies for Win10/11 21H2.
- **BYOD App Protection Policies** - Covers all Microsoft Apps on both Android & iOS. Based off the [level 2 framework](https://docs.microsoft.com/en-us/mem/intune/apps/app-protection-framework).
- **Endpoint Security Settings** - Covering Windows Hello for Business, BitLocker Encryption, and Defender for Endpoint AV/Firewall/EDR/ASR
- **AAD Groups** - A few AAD groups to drive specific scenarios (All Autopilot Devices, WUfB Feature Updates, Conditional Access Exclusions).
- **Filters** - Some basic filters to allow for certain scenarios.

## Baseline Import
The baseline was exported using the tool developed by Mikael Karlsson ([GitHub](https://github.com/Micke-K/IntuneManagement) and [Twitter](https://twitter.com/Micke_K_72)), and can be imported in the same way.
Download or clone this repo, run the IntuneManagement tool and in the tool settings, change the "Root folder" under Import/Export to the folder of the baseline. Authenticate to a tenant with appropriate credentials, and use the Bulk>Import menu to import the whole baseline. You can choose to Import Assignments (this will also create the AAD groups). Be sure to monitor the console for any import failures. Individual policy imports can be achieved using the "Import" option in the bottom right of the tool.

<sup>**CAUTION** :- All policies are targeted to either *All Users* or *All Devices* by default, depending on policy. Care **must** be taken importing into a tenant with pre-existing devices!</sup>

## Testing
There is an included AAD Dynamic Device group with a rule for Hyper-V VMs to aid in testing without a physical device. If one is added into Autopilot, it will automatically receive an amended BitLocker policy to allow a successful silent enablement on a VM. The VM would need to be created as a Gen2 VM and have Secure Boot and TPM enabled to be successfully marked as compliant.

## Post-Import Steps
#### Settings that need manual assignment:
- **Windows Compliance Policy** - Four configs available, two if the tenant is utilising Defender for Endpoint/Business, one without, and duplicate policies if not utilising Windows Hello for Business.

#### Settings that need amending:
- **OneDrive (Device)** - Two settings that require the Azure tenant ID , one setting that needs the Tenant Association Key from [config.office.com](https://config.office.com/officeSettings/settings).
- **OneDrive (User)** - One setting that requires the Azure tenant ID.
- **Preferred AAD Tenant Domain** - Configure to the primary AAD tenant domain name.

#### Settings that need manual creation:
- **Defender EDR** - As automatic onboarding of devices into MDE requires the link to the Defender Portal configuring first, a Defender EDR policy will need to be created (via the [Endpoint detection and response](https://endpoint.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/edr) menu and set to "Auto from connector") once the link is configured which automatically adds the onboarding blob file to the policy.

#### Settings with additional requirements:
- **Windows Update Compliance** - With an appropriate Azure subscription, a Log Analytics Workspace can be created to monitor update compliance of devices. Additionally the v2 (currently in Preview) can link directly into the O365 Admin Portal. The included policy is configured to support the v2 Preview and lacks the CommercialID setting which used to be required. - [Additional information](https://docs.microsoft.com/en-us/windows/deployment/update/update-compliance-v2-overview) 
- **Office Apps Updates** - Creation of a [Servicing Profile](https://docs.microsoft.com/en-gb/deployoffice/admincenter/servicing-profile) through [config.office.com](https://config.office.com/officeSettings/serviceprofile) can ensure Office Apps for Business/Enterprise remain up-to-date on the Monthly Enterprise Channel. Settings in the "Office - Update Settings" policy can remain as Servicing Profiles take priority of any other Office management. Ensure the [Inventory](https://config.office.com/officeSettings/inventory) is enabled.

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