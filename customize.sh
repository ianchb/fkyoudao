#!/sbin/sh
#####################
# fkyoudao Customization
#####################
SKIPUNZIP=1

ui_print "- Prepare execute environment."
mkdir -p $MODPATH/scripts

ui_print "- Install script file."
unzip -j -o "${ZIPFILE}" 'fkyoudao/scripts/*' -d $MODPATH/scripts >&2
unzip -j -o "${ZIPFILE}" 'service.sh' -d $MODPATH >&2

# generate module.prop
ui_print "- Generate module.prop"
rm -rf $MODPATH/module.prop
touch $MODPATH/module.prop
echo "id=fkyoudao" > $MODPATH/module.prop
echo "name=Fxxk Youdao" >> $MODPATH/module.prop
echo "version=1" >> $MODPATH/module.prop
echo "versionCode=20240329" >> $MODPATH/module.prop
echo "author=siergtc" >> $MODPATH/module.prop
echo "description=Open Android settings after completing the boot process." >> $MODPATH/module.prop

set_perm_recursive $MODPATH 0 0 0755 0644
set_perm  $MODPATH/service.sh    0  0  0755
set_perm  $MODPATH/scripts/start.sh    0  0  0755
