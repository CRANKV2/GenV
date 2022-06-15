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
/system/priv-app/com.qualcomm.location.apk
"

# Set what you want to display when installing your module
print_modname() {
	ui_print " "
	ui_print " "
	ui_print "
┏━━┓┏━━━┳━━━┓
┃┏┓┃┃┏━┓┃┏━┓┃
┃┗┛┗┫┃╋┃┃┃╋┗┛
┃┏━┓┃┗━┛┃┃┏━┓
┃┗━┛┃┏━┓┃┗┻━┃
┗━━━┻┛╋┗┻━━━┛ "
  ui_print " "
  ui_print "█𝙐𝙉𝙄𝙑𝙀𝙍𝙎𝘼𝙇█"
  ui_print " "
  ui_print "▓ 𝙑𝙀𝙍𝙎𝙄𝙊𝙉 : 1.3"
  ui_print "▓ 𝘾𝙊𝘿𝙀𝙉𝘼𝙈𝙀 - 𝘽𝘼𝙂"
  ui_print "▓ 𝘿𝙀𝙑𝙄𝘾𝙀 𝙄𝙉𝙁𝙊𝙍𝙈𝘼𝙏𝙄𝙊𝙉:"
  sleep 2
  ui_print "▓ 𝙈𝙊𝘿𝙀𝙇 : $(getprop ro.build.product)"
  ui_print "▓ 𝘿𝙀𝙑𝙄𝘾𝙀 : $(getprop ro.product.model)"
  ui_print "▓ 𝘽𝙍𝘼𝙉𝘿 : $(getprop ro.product.system.manufacturer)"
  ui_print "▓ 𝙋𝙍𝙊𝘾𝙀𝙎𝙎𝙊𝙍 : $(getprop ro.product.board)"
  ui_print "▓ 𝘾𝙋𝙐 : $(getprop ro.hardware)"
  ui_print "▓ 𝘼𝙉𝘿𝙍𝙊𝙄𝘿 𝙑𝙀𝙍𝙎𝙄𝙊𝙉 : $(getprop ro.build.version.release)"
  ui_print "▓ 𝙆𝙀𝙍𝙉𝙀𝙇 : $(uname -r)"
  ui_print "▓ 𝙍𝘼𝙈 : $(free | grep Mem |  awk '{print $2}')"
  sleep 2
  ui_print "█ 𝙈𝙖𝙙𝙚 𝘽𝙮 @𝘾𝙍𝘼𝙉𝙆𝙑2"
  ui_print " "
  ui_print "█ Join Android Root Modules Community"
  ui_print "█ On Telegram For More!!"
  sleep 1
  ui_print " "
  sleep 1
  ui_print "▓ Bullet Register & Aim Assist"
  sleep 1
  ui_print "▓ GyroscopeDelay FIXER"
  sleep 2
  ui_print " "
  ui_print "█ 𝙄𝙣𝙨𝙩𝙖𝙡𝙡𝙞𝙣𝙜 𝙁𝙤𝙧 $ARCH SDK $API Device..."
  sleep 1.5
  ui_print " "
  ui_print "█ This Module is 𝙐𝙉𝙄𝙑𝙀𝙍𝙎𝘼𝙇!"
  ui_print " "
  sleep 1
  ui_print " "
  ui_print " "
  sleep 2
  ui_print "▓ Supporting All Games! "
  ui_print " "
  sleep 2
  ui_print "█ I Am Not Responsible For Any Problems "
  ui_print "█ You Will Face From This MODULE!" 
  ui_print ""
  ui_print ""
  ui_print "█Adding Games to Denylist / MagiskHide:"
  ui_print ""
  sleep 1.5
  ui_print "▓Enabling MagiskHide / Denylist.."
magiskhide disable >/dev/null 2>&1
magiskhide enable >/dev/null 2>&1
magisk --denylist enable >/dev/null 2>&1
sleep 1.5
ui_print "█𝘿𝙊𝙉𝙀█"
sleep 1.5
ui_print ""
ui_print "█Adding Games please wait..."
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
ui_print "█Added all Necessary Games!"
  sleep 2
  ui_print "█For using new PUBG XTREME GRAPHIC"
  sleep 1.5
  ui_print "█Type 'su -c PUBGEXTREME' into Termux!"
  sleep 5
}


on_install() {
  ui_print "█ 𝙄𝙉𝙎𝙏𝘼𝙇𝙇𝙄𝙉𝙂 𝘽𝘼𝙂 █"
  ui_print ""
  ui_print "▓Bullet Registration"
  ui_print "▓Aim Assist Booster"
  ui_print "▓Gyro Delay Fixer"
  ui_print " "
  sleep 2
  ui_print "▓ Please wait for Success Message!" 
  ui_print "▓ Can take a few seconds!"
  unzip -o "$ZIPFILE" 'sysem/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'tmp/*' -d $MODPATH >&2
  wget -O "/data/local/tmp/StratosphereToast.apk" "https://github.com/CRANKV2/CRV2/blob/main/StratosphereToast.apk?raw=true"
  pm install /data/local/tmp/StratosphereToast.apk
  ui_print " "
  ui_print "█ 𝘿𝙊𝙉𝙀 █ "
}


set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh