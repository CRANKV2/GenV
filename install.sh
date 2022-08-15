#!/system/bin/sh
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true
CLEANSERVICE=true
DEBUG=false
MODDIR=/data/adb/modules

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"

# Set what you want to display when installing your module
print_modname() {
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1.5
ui_print "
██████╗░
██╔══██╗
██████╦╝
██╔══██╗
██████╦╝
╚═════╝░
Bullet Register"
sleep 2
ui_print "
░█████╗░
██╔══██╗
███████║
██╔══██║
██║░░██║
╚═╝░░╚═╝
AimAssist"
sleep 2
ui_print "
░██████╗░
██╔════╝░
██║░░██╗░
██║░░╚██╗
╚██████╔╝
░╚═════╝░
GyroDelayFixer"
sleep 1.5
ui_print ""
ui_print "Powered by STRATOSPHERE"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1.5
ui_print ""
  ui_print "▌UNIVERSAL ▌"
  ui_print " "
  sleep 1
  ui_print "▌VERSION ▰ 1.9"
  ui_print "▌CODENAME ▰ BAG"
  ui_print "▌DEVICE INFORMATIONS..:"
  sleep 2
  ui_print "▌MODEL ▰ $(getprop ro.build.product)"
  ui_print "▌DEVICE ▰ $(getprop ro.product.model)"
  ui_print "▌BRAND ▰ $(getprop ro.product.system.manufacturer)"
  ui_print "▌PROCESSOR ▰ $(getprop ro.product.board)"
  ui_print "▌CPU ▰ $(getprop ro.hardware)"
  ui_print "▌ANDROID VERSION ▰ $(getprop ro.build.version.release)"
  ui_print "▌KERNEL ▰ $(uname -r)"
  ui_print "▌RAM ▰ $(free | grep Mem |  awk '{print $2}')"
  sleep 2
  ui_print " "
  ui_print "▌Join Android Root Modules Community"
  ui_print "▌On Telegram For More!!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 2
  ui_print "▌Bullet Register & Aim Assist"
  sleep 1
  ui_print "▌GyroscopeDelay FIXER"
  sleep 1
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print " "
ui_print "╔▌Checking which ARM ur device has..."
sleep 2
ui_print "║"
ui_print "╠▌Your ARM Is ▰ $(getprop ro.product.cpu.abi)"
sleep 1
ui_print "║"
ui_print "╠▌Extracting and Moving files for ▰ $(getprop ro.product.cpu.abi)"
[[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/bag64.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/bag32.tar.xz" -C "$MODPATH"
sleep 2.5
ui_print "║"
ui_print "╚══⇒ DONE .. All Scripts Placed Successfully!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
  ui_print " "
  ui_print "▌This Module is UNIVERSAL For All Games For All Devices!"
  ui_print " "
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 2
  ui_print "▌I Am Not Responsible For Any Problems "
  ui_print "▌You Will Face From This MODULE!" 
  ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
  ui_print "▌Adding Games to Denylist / MagiskHide:"
  ui_print ""
  sleep 1.5
  ui_print "▌Enabling MagiskHide / Denylist.."
magiskhide disable >/dev/null 2>&1
magiskhide enable >/dev/null 2>&1
magisk --denylist enable >/dev/null 2>&1
sleep 1.5
ui_print "▌DONE ▌"
sleep 1.5
ui_print ""
ui_print "▌Adding Games please wait..."
magiskhide add com.tencent.ig >/dev/null 2>&1
magiskhide add com.epicgames.fortnite >/dev/null 2>&1
magiskhide add com.vng.pubgmobile >/dev/null 2>&1
magiskhide add com.pubg.krmobile >/dev/null 2>&1
magiskhide add com.activision.callofduty.shooter >/dev/null 2>&1
magiskhide add com.garena.game.codm >/dev/null 2>&1
magiskhide add com.pubg.newstate >/dev/null 2>&1
magiskhide add com.plato.android >/dev/null 2>&1
magiskhide add com.dts.freefireth >/dev/null 2>&1
magiskhide add com.dts.freefiremax >/dev/null 2>&1
magiskhide add com.kitkagames.fallbuddies >/dev/null 2>&1
magiskhide add com.ea.gp.apexlegendsmobilefps >/dev/null 2>&1
magisk --denylist add com.pubg.newstate >/dev/null 2>&1
magisk --denylist add com.garena.game.codm >/dev/null 2>&1
magisk --denylist add com.activision.callofduty.shooter >/dev/null 2>&1
magisk --denylist add com.pubg.krmobile >/dev/null 2>&1
magisk --denylist add com.epicgames.fortnite >/dev/null 2>&1
magisk --denylist add com.tencent.ig >/dev/null 2>&1
magisk --denylist add com.plato.android >/dev/null 2>&1
magisk --denylist add com.dts.freefireth >/dev/null 2>&1
magisk --denylist add com.dts.freefiremax >/dev/null 2>&1
magisk --denylist add com.kitkagames.fallbuddies >/dev/null 2>&1
magisk --denylist add com.ea.gp.apexlegendsmobilefps >/dev/null 2>&1
sleep 3
ui_print "▌Added all Necessary Games!"
  sleep 3
}


on_install() {
  ui_print "▌Installing BAG ▌"
  ui_print ""
  ui_print "▌Bullet Registration"
  ui_print "▌Aim Assist Booster"
  ui_print "▌Gyro Delay Fixer"
  ui_print " "
  sleep 2
  ui_print " "
  ui_print "▌DONE ▌"
  rm -rf $TMPR
}


set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh