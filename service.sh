#!/system/bin/sh

MODDIR=${0%/*}

(
until [ $(getprop sys.boot_completed) -eq 1 ] ; do
  sleep 15
done
${MODDIR}/scripts/start.sh
)&
