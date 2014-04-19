# $(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS := device/asus/A80/overlay
    
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# This device is xxhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xxhdpi density so
# we do this little trick to fall back to the xhdpi version
# if the xxhdpi doesn't exist.

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi xxhdpi

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

PRODUCT_COPY_FILES += \
	device/asus/A80/fstab.qcom:root/fstab.qcom \
	device/asus/A80/init.asus.rc:root/init.asus.rc \
	device/asus/A80/init.asus.sdcard.sh:root/init.asus.sdcard.sh \
	device/asus/A80/init.asus.usb.rc:root/init.asus.usb.rc \
	device/asus/A80/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	device/asus/A80/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	device/asus/A80/init.qcom.sh:root/init.qcom.sh \
	device/asus/A80/init.qcom.rc:root/init.qcom.rc \
	device/asus/A80/init.qcom.usb.sh:root/init.qcom.usb.sh \
	device/asus/A80/init.qcom.usb.rc:root/init.qcom.usb.rc \
	device/asus/A80/init.target.rc:root/init.target.rc \
	device/asus/A80/init.trace.rc:root/init.trace.rc \
	device/asus/A80/init.usb.rc:root/init.usb.rc \
	device/asus/A80/init.A80.bt.sh:root/init.A80.bt.sh \
	device/asus/A80/init.recovery.A80.rc:root/init.recovery.A80.rc \
	device/asus/A80/ueventd.qcom.rc:root/ueventd.qcom.rc \
	device/asus/A80/vold.fstab:system/etc/vold.fstab

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
	device/asus/A80/touch_dev.idc:system/usr/idc/touch_dev.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

PRODUCT_PACKAGES := \
	lights.msm8960

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=480

PRODUCT_CHARACTERISTICS := nosdcard

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# $(call inherit-product, build/target/product/full.mk)

$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_A80
PRODUCT_DEVICE := A80
