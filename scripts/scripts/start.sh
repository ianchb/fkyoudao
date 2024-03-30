#!/system/bin/sh

MODDIR=${0%/*}

# run android settings when Android boot
start_wake () {
  am start -n com.android.settings/com.android.settings.Settings
  settings put global development_settings_enabled 1
  settings put global adb_enabled 1
  svc usb setFunctions mtp
}

start_wake
