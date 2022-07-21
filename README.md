# OpenIntuneBaseline
<sup>**NOTE** :- This has been developed as a starting point or foundation and is not necessarily considered "complete". It is being made available to allow learning, development, and knowledge-sharing amongst communities. 
I assume no liability for the usage or application of the settings within this project in production tenants.<sup>
---
## Baseline Purpose
The original purpose of this settings pack was a single-import baseline policy which covers all necessary configuration to provide a secure Windows device with minimal engineering effort. This expanded to a wider Intune platform configuration, and eventually broadened further to cover Azure AD Conditional Access to ensure the security of the underlying tenant. Additional settings to improve overall end-user experience were added, such as OneDrive KFM and automatic Outlook configuration.

## Development
Data analysis was carried out over the reference materials below:
* NCSC Device Security Guidance [https://www.ncsc.gov.uk/collection/device-security-guidance/platform-guides/windows]
* CIS Windows Desktop L1 Benchmark [https://www.cisecurity.org/benchmark/microsoft_windows_desktop]
* Intune Security Baselines for Windows, Edge & Defender for Endpoint [https://endpoint.microsoft.com/#blade/Microsoft_Intune_Workflows/SecurityManagementMenu/securityBaselines]
* Microsoft Best Practice
* Various MVP blogs and community resources

## Baseline Settings
- **Azure AD Conditional Access** - Three baseline CA policies to block legacy auth, enfore App Protection Policies, and require MFA for all users but exclude the Intune Enrolment for improved user experience
- **Autopilot Profile** - Azure AD Joined with a name template of %SERIAL%
- **Default ESP** - Reduced timeout to 30 minutes
- **Device Enrolment Restrictions** - All platforms blocked minus Corp Windows MDM
- **Compliance Policy** - Two available, depending on usage of Defender for Endpoint
- **Windows Configuration Profile Pack** - Logically arranged policies to hit all relevant security baseline concepts across NCSC (excluding AppLocker/WDAC)
- **Windows Update for Business** - Single Update ring to ensure update compliance and Feature Update policies for Win10/11 21H2
- **BYOD App Protection Policies** for Android & iOS - Current issue with the import tool scoping the apps, as should be "All Microsoft Apps"
- **Endpoint Security Settings** - Covering Windows Hello for Business, BitLocker Encryption, and Defender for Endpoint AV/Firewall/EDR/ASR
- **AAD Groups** - A few AAD groups for specific scenarios (Autopilot Devices, WUfB Feature Updates, Conditional Access Exclusions)

## Baseline Import
The baseline was exported using the tool developed by Mikael Karlsson ([GitHub](https://github.com/Micke-K/IntuneManagement) and [Twitter](https://twitter.com/Micke_K_72)), and can be imported in the same way.
Download or clone this repo, run the IntuneManagement tool and in the tool settings, change the "Root folder" under Import/Export to the folder of the baseline. Authenticate to a tenant with appropriate credentials, and use the Bulk>Import menu to import the whole baseline. You can choose to Import Assignments (this will also create some AAD groups). Be sure to monitor the console for any import failures.

## Post-Import Steps
#### Settings that need manual assignment:
- **Windows Compliance Policy** - Two configs available, one if the tenant is utilising Defender for Endpoint/Business, one without.

#### Settings that need amending:
- **OneDrive (Device)** - Two settings that require the Azure tenant ID, one setting that needs the Tenant Association Key from [config.office.com](https://config.office.com/officeSettings/settings)
- **OneDrive (User)** - One setting that require the Azure tenant ID
- **Preferred AAD Tenant Domain** - Configure to the primary AAD tenant name

#### Settings that need creating:
- **Defender EDR** - As automatic onboarding of devices into MDE requires the link to the Defender Portal configuring first, a Defender EDR policy will need to be created once the link is configured which then automatically adds the onboarding blob file to the policy

#### Settings with additional requirements:
- **Windows Update Compliance** - With an appropriate Azure subscription, a Log Analytics Workspace can be created to monitor update compliance of devices - [Additional information](https://docs.microsoft.com/en-us/windows/deployment/update/update-compliance-get-started) 
- **Office Apps Updates** - Creation of a [Servicing Profile](https://docs.microsoft.com/en-gb/deployoffice/admincenter/servicing-profile) through [config.office.com](https://config.office.com/) can ensure Office Apps for Business/Enterprise remain up-to-date on the Monthly Enterprise Channel

## Additional Notes:
There are some settings that fall outside of this baseline, however are just as important to ensure underlying tenant security:

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