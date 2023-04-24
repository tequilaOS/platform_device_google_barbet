#
# Copyright (C) 2023 The tequilaOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/redbull/device-tequila.mk)

# HBM
PRODUCT_PACKAGES += \
    HbmSVManagerOverlay
