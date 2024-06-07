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

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
TW_INCLUDE_FASTBOOTD := true

# Platform
TARGET_BOARD_PLATFORM := xiaomi_sm8635
TARGET_BOOTLOADER_BOARD_NAME := xiaomi_sm8635
QCOM_BOARD_PLATFORMS += xiaomi_sm8635

# Dynamic partition Handling
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 31
PRODUCT_TARGET_VNDK_VERSION := 34

# A/B related packagesd
ENABLE_VIRTUAL_AB := true

PRODUCT_PACKAGES += \
    bootctrl.xiaomi_sm8550.recovery \
    bootctrl.xiaomi_sm8550 \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-impl-qti.recovery

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
