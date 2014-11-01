# Release name
PRODUCT_RELEASE_NAME := trltetmo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trltetmo/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trltetmo
PRODUCT_NAME := cm_trltetmo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := trltetmo
PRODUCT_MANUFACTURER := samsung
