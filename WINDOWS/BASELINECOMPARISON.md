# OIB Baseline Comparisons

Documented below are the results of some tests of other baseline configurations available for Intune-managed devices. I documented the experice seen during an Autopilot deployment, the general post-provisioning user experience, and any policy or security issues identified.

To conduct the tests I took an approach that is widely seen in this space, that being:
* Baselines were imported "as-is" with no modifications made.
* All policies were targeted at devices, rather than users.

OIB data has been presented from **direct feedback from community members** who have implemented the baseline **in their own environments**. Other baseline tests have been conducted to map against those same feedback points to provide a reasonable and unbiased comparison.

---

## OpenIntuneBaseline
### Test Details
* Baseline Version(s) Tested:
    * [OpenIntuneBaseline - Windows v3.3](/WINDOWS/README.md)
* Tested on:
    * Windows 11 Enterprise 23H2 - 2024.08 B Security Update

### Autopilot User Experience:
* No reboot seen between Device and user Phase.
* User required to pass 2rd MFA challenge to configure WHfB (not seen if skipping user ESP or ESP takes <15 minutes).

### General User Experience:
* Edge automatically configured and signed-in.
* Great productivity experience:
    * Outlook auto sign-in using primary SMTP address
    * OneDrive KFM automatically configured and signed-in.
    * Office apps do not prompt first-run wizard.

### Helpdesk Support Experience:
* UAC allowed within the user session, able to use LAPS to diagnose or resolve issues.

### Policy Issues Seen:
* Two transient policy error due to Defender Additional Configuration & Defender Tamper Protection ([documented here](/WINDOWS/KNOWNISSUES.md)) - Resolved after reboot.

### Security Issues Identified:
* None

### Admin Impact Summary:
* Simple and quick implementation of a secure, "known-good" baseline.
* Known issues are well documented.
* Policies are granular and easy to understand and expand on.
* Community-driven feedback and support available.

---

## Intune Security Baseline
### Comparison Rationale
In blogs, documentation, and presentations, Microsoft regularly states that the Intune Security Baseline is the recommended starting point for securing Windows devices.

### Test Details
* Baseline Version(s) Tested:
    * [Security Baseline for Windows 10 and later - Version 23H2](https://learn.microsoft.com/en-gb/mem/intune/protect/security-baseline-settings-mdm-all?pivots=mdm-23h2)
    * [Microsoft Defender for Endpoint Security Baseline - Version 24H1](https://learn.microsoft.com/en-gb/mem/intune/protect/security-baseline-settings-defender?pivots=mde-v24h1)
    * [Security Baseline for Microsoft Edge - Version 117](https://learn.microsoft.com/en-gb/mem/intune/protect/security-baseline-v2-edge-settings?pivots=edge-v117)
* Tested on:
    * Windows 11 Enterprise 23H2 - 2024.08 B Security Update

### Autopilot User Experience:
* Reboot seen between Device and user Phase:
    * User needs to re-input user credentials.
    * User required to re-pass MFA (if not skipping user ESP).
* User required to pass 3rd MFA challenge to configure WHfB (or 2nd if skipping user ESP).
* Default password length of 14 which also impacts WHfB PIN!

### General User Experience:
* You've been forced to use a 14 character PIN which you've probably set the same as your password.
* Poor initial Edge user experience:
    * Account automatically identified but user asked for sign in
    * Large amount of initial setup wizard prompts.
* Suboptimal productivity experience:
    * Outlook identifies user account but does not get automatically configured.
    * No OneDrive configuration, user has to log in and configure manually.
    * Prompted by Office first-run wizard to set file types.

### Helpdesk Support Experience:
* UAC blocked within the user session, making it difficult to diagnose or resolve issues.

### Policy Issues Seen:
* Windows and Defender Security Baselines (still) conflict with each other.

### Security Issues Identified:
* No BitLocker configuration, leaving device unencrypted.

### Admin Impact:
* Applying other policies difficult due to monolithic nature of the security baseline.
* Tracking down and resolving conflicts between the security baselines is time-consuming.
* Support relies on Microsoft documentation or available paid support channels.

---

## Center for Internet Security (CIS) Benchmark
### Comparison Rationale
The CIS Benchmarks are widely used across the industry and are considered a "gold standard" for device security configuratio.

### Test Details
* Baseline Version Tested:
    * [CIS Microsoft Intune for Windows 11 Benchmark v3.0.1](https://workbench.cisecurity.org/benchmarks/16853) (CIS Workbench login required)
        * Note: Build Kit requires CIS SecureSuite subscription
* Tested on:
    * Windows 11 Enterprise 23H2 - 2024.08 B Security Update

### Autopilot User Experience:
* Reboot seen between Device and user Phase:
    * User had to press CTRL+ALT+DEL.
    * User needs to re-input user credentials.
    * User required to re-pass MFA (if not skipping user ESP).
* User required to pass 3rd MFA challenge to configure WHfB (or 2nd if skipping user ESP).

### General User Experience:
* Configured to not remember user credentials so every logon requires full credential input even if WHfB is configured.
* Poor initial Edge user experience:
    * Account automatically identified but user asked for sign in
    * Large amount of initial setup wizard prompts.
* Suboptimal productivity experience:
    * Outlook identifies user account but does not get automatically configured.
    * No OneDrive configuration, user has to log in and configure manually.
    * Prompted by Office first-run wizard to set file types.

### Helpdesk Support Experience:
* UAC blocked within the user session, making it difficult to diagnose or resolve issues.

### Policy Issues Seen:
* **CIS (L1) Section 1 - 3.9.1.1 - Windows 11 Intune 3.0** - _(L1) Ensure 'MSS: (AutoAdminLogon) Enable Automatic Logon (not recommended)' is set to 'Disabled'_
    * Setting completely breaks Autopilot if not removed.
* **CIS (L1) Windows Update - Windows 11 Intune 3.0.1** - 
    * Conflicted with pre-existing Windows Update for Business Ring settings.

### Security Issues Identified:
* BitLocker policy does not function, leaving device unencrypted.
* Some security gaps without implementing additional benchmarks (e.g. Edge, Internet Explorer).
* Conflicts in Windows Update settings leads to unpredictable update behaviour.

### Admin Impact:
* Does not work out-of-the-box with Autopilot!
* Applying other policies potentially difficult due to haphazard existing policy groupings.
* Tracking down and resolving conflicts between the security baselines is time-consuming.
* Support relies on vendor documentation or available paid support channels.

---
