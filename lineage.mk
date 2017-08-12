$(call inherit-product, device/Gree/G0215D/device_G0215D.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Release name
PRODUCT_RELEASE_NAME := G0215D

PRODUCT_DEVICE := G0215D
PRODUCT_NAME := lineage_G0215D
PRODUCT_BRAND := Gree
PRODUCT_MODEL := G0215D
PRODUCT_MANUFACTURER := Gree
PRODUCT_RESTRICT_VENDOR_FILES := false

