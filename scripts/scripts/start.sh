#!/system/bin/sh

MODDIR=${0%/*}

# run android settings when Android boot
start_wake () {
  am start -n com.android.settings/com.android.settings.Settings
}

start_wake