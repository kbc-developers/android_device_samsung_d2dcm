#!/system/bin/sh

export PATH=/system/bin:/system/xbin

PROP_PATH=/data/TweakGS3.prop

setprop ro.kbc.propwritable 1

BOOT_SND=`grep audioflinger\.bootsnd $PROP_PATH | cut -d'=' -f2`
if [ "$BOOT_SND" = '1' ]; then
    setprop audioflinger.bootsnd 1
else
    setprop audioflinger.bootsnd 0
fi

CAMERA_SND=`grep ro\.camera\.sound\.forced $PROP_PATH | cut -d'=' -f2`
if [ "$CAMERA_SND" = '1' ]; then
    setprop ro.camera.sound.forced 1
else
    setprop ro.camera.sound.forced 0
fi

LCD_DENSITY=`grep ro\.sf\.lcd_density $PROP_PATH | cut -d'=' -f2`
if [ -n "$LCD_DENSITY" ]; then
    setprop ro.sf.lcd_density $LCD_DENSITY
fi

setprop ro.kbc.propwritable 0

