#!/system/bin/sh

####################################################
# AOD FullScreen Enabler - Universal Patching Script
####################################################

ui_print "  ___________________________________________  "
ui_print " |                                           | "
ui_print " |         AOD FullScreen Enabler v1         | "
ui_print " |    Crafted by @Gustavoppw & @GueRapii     | "
ui_print " |___________________________________________| "
ui_print " "
sleep 1

ui_print "[*] Analyzing device environment..."
BRAND=$(getprop ro.product.brand)
if [ "$BRAND" != "samsung" ]; then
    ui_print " "
    ui_print " [!] ERROR: Non-Samsung device detected."
    ui_print " [!] This module is strictly for OneUI devices."
    abort    " [!] Aborting installation..."
fi
ui_print " [+] Device: Samsung $(getprop ro.product.model) detected."

ui_print "[*] Checking OneUI version..."
ONEUI_VER=$(getprop ro.build.version.oneui)
if [ -z "$ONEUI_VER" ] || [ "$ONEUI_VER" -lt 60100 ]; then
    ui_print " "
    ui_print " [!] ERROR: OneUI 6.1 or higher is required."
    ui_print " [!] Your device is running an older version."
    abort    " [!] Aborting installation..."
fi
sleep 0.5

FF_XML="$MODPATH/system/etc/floating_feature.xml"
SYS_FF_XML="/system/etc/floating_feature.xml"

ui_print "[*] Initializing dynamic system patching..."
sleep 0.5

mkdir -p "$(dirname "$FF_XML")"

if [ -f "$SYS_FF_XML" ]; then
    ui_print "[*] Cloning system floating_feature.xml..."
    cp -af "$SYS_FF_XML" "$FF_XML"
    sleep 0.5
else
    abort " [!] CRITICAL ERROR: System feature file not found."
fi

ui_print "[*] Injecting AOD FullScreen configuration..."
FEATURE="SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN"

if grep -q "$FEATURE" "$FF_XML"; then
    sed -i "s|<$FEATURE>[^<]*</$FEATURE>|<$FEATURE>1</$FEATURE>|g" "$FF_XML"
else
    sed -i "/<\/SecFloatingFeatureSet>/i \    <$FEATURE>1</$FEATURE>" "$FF_XML"
fi
sleep 1

ui_print "[*] Optimizing file permissions..."
set_perm "$FF_XML" 0 0 0644
sleep 0.5

ui_print " "
ui_print "============================================="
ui_print "   SUCCESS: AOD FullScreen has been enabled! "
ui_print "   Please reboot your device to apply.       "
ui_print "============================================="
ui_print " "