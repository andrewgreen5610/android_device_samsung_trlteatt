$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/trlteatt/trlteatt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/trlteatt/overlay

LOCAL_PATH := device/samsung/trlteatt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.qcom:recovery/root/fstab.qcom

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
	$(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
	$(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_trlteatt
PRODUCT_BRAND := Samsung
