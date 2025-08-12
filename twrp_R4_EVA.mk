#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from R4_EVA device
$(call inherit-product, device/hiby/R4_EVA/device.mk)

PRODUCT_DEVICE := R4_EVA
PRODUCT_NAME := twrp_R4_EVA
PRODUCT_BRAND := HiBy
PRODUCT_MODEL := R4_EVA
PRODUCT_MANUFACTURER := hiby

PRODUCT_GMS_CLIENTID_BASE := android-hiby

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="R4_EVA-user 11 RKQ1.211001.001 HiBy09031703 release-keys"

BUILD_FINGERPRINT := HiBy/R4_EVA/R4_EVA:11/RKQ1.211001.001/HiBy09031703:user/release-keys
