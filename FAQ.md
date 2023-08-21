# Frequently Asked Questions


> ### Why is setting _x_ not in-line with CIS/NCSC/MSFT recommendations?

The baseline has been developed to provide a balance between security and usability, as well as having gone through multiple iterations in live environments. Some settings have been adjusted because the reality is that they are not feasible in a production environment, or have been found to cause issues with usability or supportability.

I have not documented the rationale for every setting discrepancy, but if you have a specific question please either raise an [issue](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues) or post in [discussions](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions) and I will try to answer it.

--- 

> ### Security tool _y_ says setting _x_ is not configured but Intune says it's applied correctly!
This is a wider issue with security tooling, and is not specific to the baseline or even Intune. Many security tools are hard-coded to check for traditional GPO registry key locations and many (but not all) CSP's use different locations to apply a setting. This is not an issue with the baseline or Intune, and is only something that can be fixed by Microsoft or third-party security tooling vendors!

I _highly_ suggest you reach out to your vendor and make noise about this problem.

---

> ### Why isn't setting _x_ included in the baseline?

The baseline does not provide a 1:1 mapping against any single of the security frameworks, and is not intended to. It is a starting point for a secure device configuration, and should be used as such. Additional settings can be layered on top of the baseline to provide additional security, or to meet specific requirements.

If you feel a setting should be included, please raise an [issue](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues) and I will review it.

---

> ### I've added setting _x_ and it's causing conflicts!

Policies that have a (Device) or (User) suffix on them are configured at the respective areas of the registry (HKLM or HKCU). On a device with multiple users, the (Device) policies will be applied to all users, and as such the policy setting in HKLM will take precedence even if the user has something else configured.

I have tried to make the baseline as functional as possible, including grouping policies into logical categories, so you should be able to easily identify which policy is causing the conflict. Sometimes policies have strange interactions with others, and this is not always obvious. If you are unable to resolve the conflict, please raise an [issue](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues) and I will try to assist.

--- 

> ### I've added setting _x_ and it's not working!

There could be many reasons to this, but most issues end up being related to licensing. Some policies are only valid on Windows Enterprise SKUs. Check the associated CSP documentation for the policy you are trying to implement to ensure you have the correct licensing.

If you are trying to apply the baseline onto a Hybrid-Joined device, GPO is likely taking precedence. You should be using GPO to manage Hybrid devices, and/or moving to [cloud-native devices](https://aka.ms/CloudNativeDevices).

---

> ### I've removed setting _x_ and it's still applying!
At a basic level, all policies are just adding or amending registry keys in exactly the same way as GPO, and while most CSPs clean up after themselves, [some do not](https://learn.microsoft.com/en-us/mem/intune/configuration/device-profile-troubleshoot#:~:text=Intune%20settings%20are%20based%20on%20the%20Windows%20configuration%20service%20provider%20(CSPs).%20The%20behavior%20depends%20on%20the%20CSP.%20Some%20CSPs%20remove%20the%20setting%2C%20and%20some%20CSPs%20keep%20the%20setting%2C%20also%20called%20tattooing.). If you have removed a policy from the baseline, but it is still applying, it is likely that the registry key is still present on the device. You can either remove the registry key manually, or use a custom script to remove it.

---

> ### Why do policies have "D" and "U" in their name?

All policies follow the same [naming convention](/README.md#available-baseline-settings), and as such should be applied to Devices if the policy is denoted by **D**, or Users if denoted by **U**, however there are a several reasons for this: 
* Some policies are set to **User** to resolve specific issues, such as Credential/System/Device Guard and HVCI which require a reboot to apply. When these are applied to a device, they happen automatically causing a mid-Autopilot reboot between the Device and User ESP which while not a major issue, can cause confusion for end-users as it will require them to re-enter their credentials.
* Extensibility & Managability - You may want to have base Edge security settings applied to every device, but have multiple policies for Extensions based on user groups, or allow certain actions or behaviours on IT-owned devices. From experience it's a _lot_ easier to manage user groups for this. You also don't want to be in a position where policy is applied via a manually-managed device group. While this can be helpful for testing, the last thing you want is a device to be re-purposed but not removed from a group causing the incorrect security policies being applied.
* Some policies just **_feel_** like they should be applied to a device, or vice-versa, such as BitLocker.

---

> ### I want to use the baseline, but I only want to use some of the settings. How can I do this?

You can just import what you want, and change/delete whatever settings you need to. The baseline is just a starting point, and is not intended to be a "one size fits all" solution. It is intended to be a foundation for you to build upon.

---

> ### I imported the baseline into my production environment and now the CEO's laptop is broken!

The baseline is provided as-is, and is not intended to be used in a production environment without thorough testing first.

---

> ### The Security team are shouting at me because it doesn't meet CIS L2!

Have your Security team even read the CIS L2 documentation? It's not possible to meet CIS L2 without impacting usability and functionality. CIS/NCSC/MSFT recommendations are just that - recommendations, not a box-ticking excercise.

If you ***have*** to meet CIS L2, you'd be best starting your own policies from scratch.

---

> ### So I can just import the baseline and not think about it again, yeah?

No. Intune is in constant development, and new settings and functionality are added all the time. You should be reviewing your policies regularly to ensure they are still valid and meeting your requirements.

---

> ### Users can still install apps we don't want them to!

The settings included in the baseline will stop actions that require elevation, but will not stop apps that do not require elevation or install to a user's AppData folder. To achieve this you will need to look at AppLocker or Windows Defender Application Control (WDAC).

---

> ### Loads of settings don't work on our Hybrid devices!

The baseline is designed for and tested on Azure AD/Entra Joined devices, and as such some settings may not work on Hybrid devices. If you are using Hybrid devices, you should be using GPO to manage them and/or moving to [cloud-native devices](https://aka.ms/CloudNativeDevices).

---

> ### Why did you remove the old versions which included assignment groups?

To stop someone doing something *really stupid* in their production tenant. Unless you're working in a Dev/CDX/Greenfield tenant, you're likely to have existing devices or policies in place. I didn't want someone to get fired because they imported something from the internet into their production tenant without any change control or testing (even though I put a warning in the [README](./README.md)).

---

> ### How do I contribute?

Please raise an [issue](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues), post in [discussions](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions), or reach out on [Twitter](https://twitter.com/SkipToEndpoint). 

I'm always open to reasonable suggestions and improvements, and this is supposed to be a community-driven project so your feedback is incredibly important :)