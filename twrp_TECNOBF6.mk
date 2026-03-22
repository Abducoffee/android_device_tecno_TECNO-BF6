#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Configure Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

DEVICE_PATH := device/tecno/TECNOBF6

PRODUCT_DEVICE := TECNOBF6
PRODUCT_NAME := twrp_TECNOBF6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO POP 7
PRODUCT_MANUFACTURER := tecno
PRODUCT_BUILD_VENDOR_BOOT_IMAGE := true
PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BF6-user 12 SP1A.210812.001 869 release-keys"

BUILD_FINGERPRINT := TECNO/BF6-OP/TECNO-BF6:12/SP1A.210812.001/241218V866:user/release-keys

$(call inherit-product, $(DEVICE_PATH)/device.mk)