#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/x610_h651

# Screen dimens
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.common@4.0-util \
    android.hardware.audio.effect@4.0-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.stub \
    libalsautils \
    libdynproc \
    libtinycompress \
    libtinyxml

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.common@1.2 \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.memtrack@1.0.vendor \
    libhwc2onfbadapter

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(DEVICE_PATH)/configs/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

PRODUCT_PACKAGES += \
    libkeymaster3.vendor

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.x610_h651

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6765 \
    init.mt6765.usb.rc \
    init.sensor_1_0.rc \
    factory_init.rc \
    init.modem.rc \
    init.mt6765.rc \
    meta_init.rc \
    init.connectivity.rc \
    ueventd.mt6765.rc \
    init.recovery.mt6765.rc \

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0.vendor \
    libsensorndkbridge

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Wi-Fi
PRODUCT_PACKAGES += \
    libkeystore-engine-wifi-hidl \
    libkeystore-wifi-hidl

# Inherit the proprietary files
$(call inherit-product, vendor/infinix/x610_h651/x610_h651-vendor.mk)
