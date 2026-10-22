# Scripts

This folder contains scripts that supplement the MacOS OIB where a Settings Catalog policy cannot achieve the desired result.

## Enable-OneDriveOpenAtLogin
### Purpose
The OneDrive "Open at login" (`OpenAtLogin`) managed preference is deprecated and has been a no-op since sync app 24.113, so configuring it via Settings Catalog silently does nothing. A Managed Login Items payload can't replace it either: per Apple, Managed Login Items only *allow*/lock a login item, they never *enable* one. The only supported mechanism is OneDrive's own `/createloginitem` fire-and-exit command (OneDrive 26.027+), which must run as the signed-in user.

This script enables the OneDrive login item via `/createloginitem` so OneDrive starts automatically after the user signs in. It is guarded and idempotent: it no-ops until OneDrive >= 26.027 is installed, performs the enable exactly once, then a per-user marker file keeps every later run a no-op so the recurring schedule never re-launches OneDrive.

It works together with the Managed Login Items configured in `MacOS - OIB - Microsoft OneDrive - D - Service and Access`: the script enables the login item, the policy keeps it allowed and locked on.

### Usage
**Script type** - Shell script (macOS)
**Suggested name** - `MacOS - OIB - Microsoft OneDrive - U - Open at Login - v1.1`
**Assign to** - Users
**Script Settings:**
- Run script as signed-in user - Yes
- Hide script notifications on devices - Yes
- Script frequency - Every 15 minutes
- Max number of times to retry if script fails - 3
