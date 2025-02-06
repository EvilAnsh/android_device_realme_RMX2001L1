#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/realme/RMX2001L1/full_RMX2001L1.mk)

# Inherit common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_RMX2001L1

# To include Gapps 
WITH_GMS := true

# To Build Pixel launcher
TARGET_INCLUDE_NEXUS := true

# Some more GMS Flag
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true
