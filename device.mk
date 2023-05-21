#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6765 \
    meta_init.project.rc \
    init.mt6765.usb.rc \
    meta_init.connectivity.rc \
    init.sensor_1_0.rc \
    meta_init.modem.rc \
    init.ago.rc \
    factory_init.rc \
    init.modem.rc \
    factory_init.project.rc \
    init.mt6765.rc \
    meta_init.rc \
    factory_init.connectivity.rc \
    multi_init.rc \
    init.connectivity.rc \
    init.project.rc \
    init.aee.rc \
    ueventd.rc \
    init.rc \
    init.recovery.mt6765.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/infinix/x610_h651/x610_h651-vendor.mk)
