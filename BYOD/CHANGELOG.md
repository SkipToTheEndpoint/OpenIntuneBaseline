# BYOD App Protection Change Log

## v2.0
This version brings the Android and iOS App Protection policies in line with **Level 2** of the [Data protection framework using app protection policies](https://learn.microsoft.com/en-us/intune/app-management/protection/data-protection-framework). The policies are named **"BYOD L2+"** because some settings are raised to Level 3.

### Changes from v1
The v1 policies (`Android - Baseline - BYOD - App Protection` and `iOS - Baseline - BYOD - App Protection`) are replaced by:
* `Android - OIB - App Protection - U - BYOD L2+ - v2.0`
* `iOS - OIB - App Protection - U - BYOD L2+ - v2.0`

| Setting | Platform | v1 | v2.0 |
|---|---|---|---|
| Target policy to (app management level) | iOS & Android | Apps on unmanaged devices | All app types |
| Allow user to save copies to selected services | iOS & Android | OneDrive for Business, SharePoint | OneDrive for Business, SharePoint, **Photo Library** |
| Allow users to open data from selected services | iOS & Android | OneDrive for Business, SharePoint, Camera | OneDrive for Business, SharePoint, Camera, **Photo Library** |
| Send org data to other apps | iOS | Policy managed apps | Policy managed apps **with Open-In/Share filtering** |
| Override biometrics with PIN after timeout | iOS & Android | 720 minutes (12 hours) | **1440 minutes (24 hours)** |
| Offline grace period (Block access) | iOS & Android | 720 minutes (12 hours) | **10080 minutes (7 days)** |
| Offline grace period (Wipe data) | iOS & Android | 90 days | **30 days** |
| Jailbroken/rooted devices | iOS & Android | Block access | **Wipe data** |
| Samsung Knox device attestation | Android | Not configured | **Block access** |

The biometric timeout and offline block settings were above the framework's recommendations in v1. In v2.0 they're relaxed to the Level 2 values to reduce friction on personal devices.

The *All Microsoft Apps* app list is maintained by Microsoft, so the apps it contains may differ from v1.

v2.0 targets all app types. To limit the policies to BYOD devices, use a *Managed apps* assignment filter with `(app.deviceManagementType -eq "Unmanaged")`. See the [README](/BYOD/README.md#prerequisites).

### Differences from Level 2
#### Targeted Apps
* The policies target **All Microsoft Apps** instead of only the framework's Core Microsoft Apps group. This protects every Intune SDK-enabled Microsoft app without the list needing manual maintenance.

#### Data Protection
##### Raised to Level 3
* **Printing org data: Block** (iOS & Android). Level 2 allows printing. BYOD devices may be able to print to unmanaged or home printers, so I believe blocking is the safer approach.

##### Other notes
* **iOS - Send org data to other apps:** *Policy managed apps with Open-In/Share filtering*. The framework explicitly allows this option at Level 2, and it gives a better user experience because the share sheet only shows managed apps.
* **Receive data from other apps** is set to **All apps** (Level 2). With this value, Intune greys out *Open data into Org documents* and *Allow users to open data from selected services* and doesn't enforce them. The exported JSON still contains values for these settings (Allow; OneDrive for Business, SharePoint, Camera, Photo Library), but they only apply if you change *Receive data from other apps* to **Policy managed apps** (Level 3).
* **iOS - Apple Intelligence settings** (Genmoji, Writing Tools, Screen capture) and widget content sync are left at their default (**not blocked**). The framework doesn't currently make recommendations for these settings.

#### Access Requirements
##### Raised to Level 3
* **Simple PIN: Block** (iOS & Android). This prevents repeating or sequential PINs (for example 1111 or 1234).
* **Minimum PIN length: 6** (iOS & Android). Level 2 recommends 4. A 6-digit minimum is in line with UK NCSC guidance and is unchanged from v1. Because biometrics are allowed instead of the PIN, most users should rarely need to enter the App PIN.
* **Android - Class 3 Biometrics (Android 9.0+): Require**, with **Override Biometrics with PIN after biometric updates: Require**. Level 2 doesn't require these. Requiring Class 3 (strong) biometrics brings Android closer to iOS, where Face ID and Touch ID already provide hardware-backed strong biometrics. It also stops weaker face-unlock methods from replacing the App PIN. Both settings are unchanged from v1.

#### Conditional Launch
##### Device Conditions
* **Jailbroken/rooted devices: Wipe data** (iOS & Android, Level 3). Level 2 recommends Block access. Wiping removes org data from compromised personal devices instead of only blocking access.
* **Min OS version** (iOS & Android) and **Min patch version** (Android) are recommended at Level 2 but **not configured** in the OIB. These values have to change every month to stay meaningful, so static values in a baseline would quickly go out of date.
  To meet this Level 2 requirement, use [IntuneComplianceMaintainer](https://github.com/SkipToTheEndpoint/IntuneComplianceMaintainer). It automatically updates the minimum OS version (and the Android security patch level) on your App Protection and Compliance policies, based on the latest supported releases, with a configurable delay before enforcement.
* Mobile Threat Defense (*Max allowed device threat level*) is not configured. It is a Level 3 setting and requires an MTD connector.