#
# Copyright (C) 2023 The tequilaOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Tequila stuff.
$(call inherit-product, vendor/tequila/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/barbet/aosp_barbet.mk)

include device/google/barbet/device-tequila.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a
PRODUCT_NAME := tequila_barbet

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=barbet \
    PRIVATE_BUILD_DESC="barbet-user 13 TQ2A.230405.003 9719927 release-keys"

BUILD_FINGERPRINT := google/barbet/barbet:13/TQ2A.230405.003/9719927:user/release-keys

$(call inherit-product, vendor/google/barbet/barbet-vendor.mk)
