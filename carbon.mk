## Specify phone tech before including full_phone
#$(call inherit-product, vendor/carbon/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := f6mt

# Inherit some common carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/f6mt/device_f6mt.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f6mt
PRODUCT_NAME := cm_f6mt
PRODUCT_BRAND := MetroPCS
PRODUCT_MODEL := LG-MS500
PRODUCT_MANUFACTURER := LGE
