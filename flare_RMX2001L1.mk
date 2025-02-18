#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/realme/RMX2001L1/full_RMX2001L1.mk)

# Inherit common Project Flare stuff.
$(call inherit-product, vendor/flare/config/common_full_phone.mk)

PRODUCT_NAME := flare_RMX2001L1

# Project Flare specific flags
FLARE_BUILD_TYPE := OFFICIAL
FLARE_MAINTAINER := αиѕн
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := true
