#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure compression
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Inherit from water device
$(call inherit-product, device/xiaomi/water/device.mk)

PRODUCT_DEVICE := water
PRODUCT_NAME := twrp_water
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := water
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_water-user 12 SP1A.210812.016 V14.0.11.0.TGOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/water_global/water:12/SP1A.210812.016/V14.0.11.0.TGOMIXM:user/release-keys
