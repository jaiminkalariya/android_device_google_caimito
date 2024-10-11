#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := komodo
DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google/komodo
$(call inherit-product, device/google/zumapro/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_BRAND := google

PRODUCT_SYSTEM_NAME := $(DEVICE_CODENAME)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="husky-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/AP2A.240905.003/12231197:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
