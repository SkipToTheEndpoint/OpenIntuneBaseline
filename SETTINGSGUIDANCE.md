# Setting Guidance

All policies follow the same [naming convention](/README.md#available-baseline-settings), and as such should be applied to Devices if the policy is denoted by **D**, or Users if denoted by **U**.

That being said, I _**highly**_ recommend reading the following MS article for more general information around applying policies to User or Device groups:

[Assign device profiles in Microsoft Intune | User Groups vs. Device Groups | Microsoft Learn](https://learn.microsoft.com/en-us/mem/intune/configuration/device-profile-assign#user-groups-vs-device-groups?WT.mc_id=DX-MVP-5005288)

---

## Windows Updates 

### Windows Autopatch

Windows Autopatch, included with M365 E3/F3 licensing massively simplifies the management of updates, as well as providing enhanced reporting. I would strongly suggest using this service if you have access to it.

The following settings are what I would reccommend for a standard, flat organisation. If you have a more complex structure, you may need to adjust settings or groups to suit your individual needs.

|    **Deployment Ring**    	|   **Group**   	| **Deferral Period** 	| **Deadline** 	| **Grace Period** 	|
|:-------------------------:	|:-------------:	|:-------------------:	|:------------:	|:----------------:	|
| Windows Autopatch - Test  	| Assigned      	|        0 days       	|    0 days    	|       1 day      	|
| Windows Autopatch - Ring1 	| Dynamic - 5%  	|        3 days       	|    0 days    	|       1 day      	|
| Windows Autopatch - Ring2 	| Dynamic - 15% 	|        6 days       	|     1 day    	|      2 days      	|
| Windows Autopatch - Ring3 	| Dynamic - 80% 	|        9 days       	|     1 day    	|      2 days      	|
| Windows Autopatch - Last  	| Assigned      	|       13 days       	|    0 days    	|       1 day      	|

### Windows Update for Business (WUfB) Rings

The baseline utilises a 3-ring update model of Pilot, UAT & Production. This is designed to allow for a staged rollout of updates to ensure any issues are caught before they reach the majority of users.

Rings use Deferral, Deadline and Grace Period settings to control when updates are offered, installed and when devices are forced to reboot. These are cumulative, so a device in the Production ring will have a 10-day deferral, 2-day deadline and 1-day grace period, resulting in a 13-day delay between release and devices being up to date.

This particular time period was chosen to adhere to UK NCSC/Cyber Essentials guidelines, which state that updates should be applied within 14 days of release.

#### Common Settings
All three rings share the following settings:

**Update settings**
* Microsoft product updates - Allow
* Windows drivers - Allow
* Feature update deferral period (days) - 0
* Upgrade Windows 10 devices to Latest Windows 11 release - No
* Set feature update uninstall period (2 - 60 days) - 30
* Servicing channel - General Availability channel

**User experience settings**
* Automatic update behavior - Reset to default (thus utilises Intelligent Active Hours)
* Restart checks - Allow
* Option to pause Windows updates - Disable
* Option to check for Windows updates - Enable
* Change notification update level - Not configured
* Use deadline settings - Allow
* Deadline for feature updates - 0
* Auto reboot before deadline - No

#### Pilot
Purpose: Designed to act as a first line of defence against potential issues with updates. This is usually IT staff and early adopters, though be aware they generally have a higher tolerance for issues than the average user. Aim to include 1-5% of total devices in this ring.

Behaviour: Devices in this ring recieve updates immediately after release with 1 day grace period before a forced reboot.

Assignments:
* Include: Manually-assigned group of either users OR devices.
* Exclude: Group(s) that drive the UAT ring.

#### UAT
Purpose: By far the most important ring. UAT should involve key users across the business to ensure appropriate testing across business applications. Ideally, users in this ring should *know* they're part of this testing and be encouraged to report issues immediately. Aim to include 5-15% of total devices in this ring.

Behaviour: Devices in this ring receive updates 3 days after release and have a 0-day deadline on install with 2 day grace period before a forced reboot.

Assignments:
* Include: Manually-assigned group of either users OR devices.
* Exclude: Group(s) that drive the Pilot ring.

#### Production
Purpose: All remaining devices.

Behaviour: Devices in this ring receive updates 10 days after release and have a 2-day deadline on install with 1 day grace period before a forced reboot.

Assignments:
* Include: Built-in "All Users" or "All Devices" virtual group.
* Exclude: Group(s) that drive the Pilot and UAT rings.

---
