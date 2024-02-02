#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-BF6 device
$(call inherit-product, device/tecno/TECNO-BF6/device.mk)

PRODUCT_DEVICE := TECNO-BF6
PRODUCT_NAME := twrp_TECNO-BF6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO BF6
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion
