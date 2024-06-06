#
# Copyright (C) 2022 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/peridot

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Default Android A/B configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# A/B related packages
ENABLE_AB := true
ENABLE_VIRTUAL_AB := true

# Board
PRODUCT_TARGET_VNDK_VERSION := 33
PRODUCT_SHIPPING_API_LEVEL := 31
	
# Boot Control HAL
PRODUCT_PACKAGES += \
    bootctrl.taro.recovery \
    android.hardware.boot@1.2-impl-qti.recovery

# Dynamic partition Handling
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
TW_INCLUDE_FASTBOOTD := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
