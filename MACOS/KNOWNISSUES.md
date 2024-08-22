# Known Issues
Below are a list of known issues that have been identified in the MacOS OIB Beta v1.0.

> [!NOTE]
> This is **not** "production-ready". Please use a test environment where possible, or extreme caution in a production tenant.

## MacOS OIB v1.0 Beta
### Platform SSO requires at least MacOS 13, but preferably 14 to be able to use passkeys
This is documented: (https://learn.microsoft.com/en-us/mem/intune/configuration/platform-sso-macos)

### Platform SSO is configured to use Secure Enclave rather than Password Sync
It's just better, but does mean the local account password doesn't stay in sync with Entra. Again, this is documented.

### FileVault enforcement during Setup Assistant doesn't want to work
I don't know why, but that's why this is a beta, right?

### OneDrive Known Folder Move (KFM) does not work without user interaction
The profile "MacOS - OIB - Microsoft OneDrive - U - Known Folder Move - v1.0" needs to be edited and the settings *Automatically and silently enable the Folder Backup feature (Known Folder Move)* and *Prompt users to enable the Folder Backup feature (Known Folder Move)* need to be set with your Tenant ID.
Despite this, I've been unable to get it working as OneDrive does not seem to automatically start. The settings do take effect once manually run however.
