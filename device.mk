#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/peridot

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
TW_INCLUDE_FASTBOOTD := true

# API
PRODUCT_TARGET_VNDK_VERSION := 33
PRODUCT_SHIPPING_API_LEVEL := 31

# A/B
ENABLE_VIRTUAL_AB := true

# Boot Control HAL
PRODUCT_PACKAGES += \
    bootctrl.taro.recovery \
    android.hardware.boot@1.2-impl-qti.recovery

# Soong peridot
PRODUCT_SOONG_peridot += \
    $(LOCAL_PATH)
