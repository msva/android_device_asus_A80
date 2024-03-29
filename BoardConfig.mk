# inherit from the proprietary version
-include vendor/asus/A80/BoardConfigVendor.mk

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Device information
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOOTLOADER_BOARD_NAME := A80
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_VARIANT := krait

#Qcom enhancements
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_DISPLAY_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DNEW_ION_API
TARGET_QCOM_MEDIA_VARIANT := caf

# FIXME: HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

#Kernel stuff
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_KERNEL_CONFIG := A80_defconfig
TARGET_PREBUILT_KERNEL := device/asus/A80/kernel
TARGET_KERNEL_SOURCE := kernel/asus/A80

# Radio
TARGET_NO_RADIO_IMAGE := true

# Partition sizes | I have double checked these
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 56941846016
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 1342177280

BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Misc.
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USES_SF_BYPASS := true
BOARD_USES_SECURE_SERVICES := true
# BOARD_LIB_DUMPSTATE := libdumpstate.A80
TARGET_USES_OVERLAY := true
TARGET_RECOVERY_FSTAB := device/asus/A80/recovery.fstab

# Display
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/asus/A80/egl.cfg
TARGET_RECOVERY_UI_LIB := librecovery_ui_A80
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Krait optimization
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/asus/A80/bluetooth

# Sound/audio
BOARD_USES_ALSA_AUDIO:= true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
