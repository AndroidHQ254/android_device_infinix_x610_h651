#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Infinix Note 6 device
$(call inherit-product, device/infinix/x610_h651/device.mk)

PRODUCT_DEVICE := x610_h651
PRODUCT_NAME := lineage_x610_h651
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X610B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_x610_h651-user 9 PPR1.180610.011 31055 release-keys"

BUILD_FINGERPRINT := Infinix/H651B/Infinix-X610:9/PPR1.180610.011/AB-200805V370:user/release-keys
