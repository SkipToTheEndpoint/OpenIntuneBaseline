# OIB BYOD App Protection

## Overview
The OIB BYOD App Protection policies ("**L2+**") primarily follow "**Level 2 - Enterprise enhanced data protection**" of the Microsoft [Data Protection Framework Using App Protection Policies](https://learn.microsoft.com/en-us/intune/app-management/protection/data-protection-framework?wt.mc_id=EM-MVP-5005288), with a small number of settings raised to **Level 3** and a few Level 2 settings intentionally left unconfigured. All deviations are documented in the [Change Log](/BYOD/CHANGELOG.md).

| Policy | Platform |
|---|---|
| Android - OIB - App Protection - U - BYOD L2+ - v2.0 | Android |
| iOS - OIB - App Protection - U - BYOD L2+ - v2.0 | iOS/iPadOS |

## Prerequisites
#### Assignment Filter
- Intune **Assignment Filters** (filter type: *Managed apps*) for each platform (Android and iOS/iPadOS), so the policies only apply to unmanaged (BYOD) devices. Use the following rule syntax:
```
(app.deviceManagementType -eq "Unmanaged")
```
Assign each policy to your target users/groups and set the matching filter to **Include filtered devices in assignment**.

See [Create assignment filters in Microsoft Intune - Microsoft Intune | Microsoft Learn](https://learn.microsoft.com/en-us/intune/fundamentals/filters/overview?wt.mc_id=EM-MVP-5005288) for more information.

>[!WARNING]
> Without this filter, App Protection Policies will apply to all devices, including managed devices, which is unlikely to be the intended behavior for BYOD scenarios!

#### Entra Conditionaal Access
- Entra Conditional Access requiring an **app protection policy** for iOS/Android devices. 

See [How to Require Device Compliance with Conditional Access - Microsoft Entra ID | Microsoft Learn](https://learn.microsoft.com/en-us/entra/identity/conditional-access/policy-all-users-device-compliance?wt.mc_id=EM-MVP-5005288) for more information.
- Legacy authentication blocked.

See [Block legacy authentication with Conditional Access - Microsoft Entra ID | Microsoft Learn](https://learn.microsoft.com/en-us/entra/identity/conditional-access/policy-block-legacy-authentication?wt.mc_id=EM-MVP-5005288) for more information.

## Minimum OS Version
Level 2 of the framework recommends a **Min OS version** (iOS & Android) and **Min patch version** (Android) conditional launch requirement. These aren't configured in the OIB policies because they need updating every month. Use [IntuneComplianceMaintainer](https://github.com/SkipToTheEndpoint/IntuneComplianceMaintainer) to set and maintain them automatically on the deployed App Protection policies.

## Settings documentation
[SETTINGSOUTPUT.md](/BYOD/SETTINGSOUTPUT.md) is a generated export. The IntuneManagement export doesn't include some settings, such as **Photo Library** in the save/open services lists and the Android device conditions (Play Integrity, threat scan on apps, device lock, Samsung Knox attestation). Use the JSON in `IntuneManagement/AppProtection` as the source of truth.
