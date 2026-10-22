#!/bin/zsh
############################################################################################
##
## MacOS - OIB - Microsoft OneDrive - U - Open at Login
##
## Enables the OneDrive login item via OneDrive's /createloginitem command (26.027+)
## so OneDrive launches automatically at login for the signed-in user. Needed because
## the legacy OpenAtLogin preference is deprecated (a no-op since sync app 24.113) and
## the Managed Login Items in "MacOS - OIB - Microsoft OneDrive - D - Service and Access"
## can only allow/lock a login item, not enable it.
##
## Adapted from microsoft/intune-my-macs PR #39 (MIT License,
## Copyright (c) Microsoft Corporation).
##
## Requirements:
##   - Run script as signed-in user = Yes (open -a fails outside the user's Aqua session)
##   - Execution frequency = every 15 min; idempotent - no-ops until OneDrive >= 26.027
##     is installed, runs the enable once, then a per-user marker keeps runs a no-op.
##
############################################################################################

set -u
ONEDRIVE="/Applications/OneDrive.app"
MINVER="26.027"   # first OneDrive build supporting /createloginitem
MARKER="$HOME/Library/Application Support/OpenIntuneBaseline/onedrive-loginitem.done"

log() { echo "[onedrive-openatlogin] $*"; }

# Guard 0 - already registered on this account; keeps the 15-min cadence a cheap
# no-op that never re-launches OneDrive. Delete the marker file to force a re-run.
if [[ -f "$MARKER" ]]; then
  log "Login item already registered (marker present) - no-op."
  exit 0
fi

# Guard 1 - no-op until OneDrive is installed (the app install may lag this script).
if [[ ! -d "$ONEDRIVE" ]]; then
  log "OneDrive not installed yet - no-op; will retry next run."
  exit 0
fi

# Guard 2 - /createloginitem needs OneDrive >= 26.027. Older builds still honour
# the OpenAtLogin managed pref, so just no-op rather than launching the full app.
ver=$(defaults read "$ONEDRIVE/Contents/Info" CFBundleShortVersionString 2>/dev/null || echo "0")
ok=$(awk -v v="$ver" -v m="$MINVER" 'BEGIN{split(v,a,".");split(m,b,".");print (a[1]*100000+a[2] >= b[1]*100000+b[2])?1:0}')
if [[ "$ok" != "1" ]]; then
  log "OneDrive $ver < $MINVER - /createloginitem unavailable; relying on OpenAtLogin pref. No-op."
  exit 0
fi

# Enable the OneDrive login item. Fire-and-exit; does not launch the full sync
# client. Then drop the marker so Guard 0 no-ops every subsequent run.
open -a "$ONEDRIVE" --args /createloginitem
mkdir -p "${MARKER:h}"
print -r -- "registered OneDrive $ver at login" > "$MARKER"
log "Requested OneDrive login-item registration (OneDrive $ver); marker written."
exit 0
