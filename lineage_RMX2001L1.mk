#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/realme/RMX2001L1/full_RMX2001L1.mk)

# Inherit common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_RMX2001L1

# RisingOS flags
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
RISING_MAINTAINER := αиѕн
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer="αиѕн"				

# CORE build flags
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true