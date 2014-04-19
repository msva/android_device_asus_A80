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

# Enable Torch
PRODUCT_PACKAGES += Torch
