# OpenIntuneBaseline - Windows

## Intended Use-Case
The baseline has been designed for, and tested on the following:

* Windows 11 Enterprise (though should also work on Windows 10 Enterprise)
* Entra ID Joined
* Intune-managed 

It has not been designed for hybrid environments, and will likely **not work as expected or intended** on hybrid-joined devices. Some settings may report errors or as not applicable if the device is running Pro/Business rather than Enterprise.

It is _**Microsoft's recommendation**_ that you move to cloud-native for new devices: https://aka.ms/CloudNativeEndpoints

I would personally recommend maintaining GPO for on-prem devices, and using Intune for cloud-native devices, with the exception of things like Endpoint Analytics, Windows Update for Business and Application Deployment. Applying Intune policy over the top of GPO can cause unexpected results, and should be avoided where possible. Similarly, GPOs may well leave registry keys behind that can cause unexpected results when applying Intune policy.

---

## Importing the Baseline:
Please reference [Importing the Baseline](/README.md#importing_the_baseline) for information.

---

## Baseline Security Posture
Primary information regarding adherence to security frameworks can be found in the main repo [README.MD](/README.md#security-framework-adherence), however there are some notable deviations from security Windowss guidance frameworks. These are detailed below:

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


### Included Settings
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

For a complete list of settings, please consult [SETTINGSOUTPUT](/WINDOWS/SETTINGSOUTPUT.md).

### Limitations:
Due to the wildly differing nature of environments, it is not possible to create a "baseline" for AppLocker or Windows Defender Application Control (WDAC). While the baseline ensures standard users cannot elevate to install applications, apps that do not require elevation or install to a user's AppData folder may not be blocked.

---

## Supporting Configuration:
- **Windows Autopatch** - If your licensing supports it, I would **strongly** recommend implementing Autopatch for management of your Windows Quality, Driver and Feature updates. - [Autopatch Overview](https://learn.microsoft.com/en-us/windows/deployment/windows-autopatch/overview/windows-autopatch-overview)
- **Windows Update for Business Reports** - With an appropriate Azure subscription, a Log Analytics Workspace can be created to monitor update compliance of devices. - [Additional information](https://learn.microsoft.com/en-us/windows/deployment/update/wufb-reports-overview) 
- **M365 Apps Updates** - Enabling [Cloud Update](https://learn.microsoft.com/en-us/deployoffice/admincenter/cloud-update) through [config.office.com](https://config.office.com/officeSettings/serviceprofile) can ensure Office Apps for Business/Enterprise remain up-to-date on the Monthly Enterprise Channel. Settings in the "Office - Update Settings" policy can remain as Cloud Update takes priority over any other Office management. Ensure the [Inventory](https://config.office.com/officeSettings/inventory) is enabled.

> [!NOTE]
> Guidance on this can be found in the [Settings Guidance](/WINDOWS/SETTINGSGUIDANCE.md) document.

---

## Additional Information:

> [!TIP]
> For further information, please consult the [FAQ](/FAQ.md)
