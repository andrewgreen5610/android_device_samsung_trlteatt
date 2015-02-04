# Release name
PRODUCT_RELEASE_NAME := trlteatt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trlteatt/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trlteatt
PRODUCT_NAME := cm_trlteatt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := trlteatt
PRODUCT_MANUFACTURER := samsung
