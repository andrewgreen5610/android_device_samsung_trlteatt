# Release name
PRODUCT_RELEASE_NAME := trlteatt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trlteatt/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trlteatt
PRODUCT_NAME := trlteuc
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SM-N910A
PRODUCT_MANUFACTURER := samsung
