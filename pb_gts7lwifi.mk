#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from nabu device
$(call inherit-product, device/samsung/gts7lwifi/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_RELEASE_NAME := gts7lwifi

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts7lwifi
PRODUCT_NAME := pb_gts7lwifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Samsung Galaxy Tab S7
PRODUCT_MANUFACTURER := samsung
