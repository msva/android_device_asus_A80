## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := A80

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/A80/full_A80.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A80
PRODUCT_NAME := cm_A80
PRODUCT_BRAND := asus
PRODUCT_MODEL := A80
PRODUCT_MANUFACTURER := asus
