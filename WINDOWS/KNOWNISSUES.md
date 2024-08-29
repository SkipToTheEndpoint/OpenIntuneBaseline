# OIB Windows - Known Issues

### Win - OIB - Defender Antivirus - D - Additional Configuration
#### Reporting shows 65000 errors.

The settings for "Intel TDT Enabled" and "Oobe Enable Rtp And Sig Update" throw 65000 errors for a while following an Autopilot deployment but they do eventually resolve.

### Win - OIB - Device Security - U - Device Guard, Credential Guard and HVCI
#### Reporting shows 65000 errors.

It has been reported in [#30](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues/30) that this may be due to Windows licensing.

## Win - OIB - Device Security - D - Location and Privacy
#### The setting "Let Apps Access Location Force Allow These Apps" may report an error

I added the new Outlook client (Microsoft.OutlookForWindows_8wekyb3d8bbwe) into the allow list. If you have this explicitly disabled in your environment, you may want to remove it from the list.

### Win - OIB - Microsoft Store - U - Configuration
#### Reporting on the "Turn off the Store application" policy shows 65000 error or as Not Applicable.

This setting does not function on Windows Pro/Business SKU's as per the [CSP Documentation](https://learn.microsoft.com/en-gb/windows/client-management/mdm/policy-csp-admx-windowsstore?WT.mc_id=Portal-fx#removewindowsstore_2).