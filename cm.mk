## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit device configuration
$(call inherit-product, device/asus/A80/full_A80.mk)

PRODUCT_RELEASE_NAME := A80

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A80
PRODUCT_NAME := cm_A80
PRODUCT_BRAND := Android
PRODUCT_MODEL := A80
PRODUCT_MANUFACTURER := Asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=WWE_PadFone BUILD_FINGERPRINT=asus/WWE_PadFone/A80:4.1.2/JZO54K/WWE_PadFone-10.6.9.33-0:user/release-keys PRIVATE_BUILD_DESC="WWE_PadFone-user 4.1.2 JZ054K WWE_PadFone-10.6.9.33-0 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
