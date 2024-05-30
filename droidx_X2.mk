lo#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/droidx/config/common.mk)

# Inherit from X2 device
$(call inherit-product, device/realme/X2/device.mk)
EXTRA_UDFPS_ANIMATIONS := true
TARGET_NOT_USES_BLUR := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := droidx_X2
PRODUCT_DEVICE := X2
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme X2
PRODUCT_MANUFACTURER := realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1993L1-user 11 RKQ1.201112.002 1639416071279 release-keys"

BUILD_FINGERPRINT := realme/RMX1993/RMX1993L1:11/RKQ1.201112.002/1639416071279:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-oppo

#droidxOS
DROIDX_BUILDTYPE := UNOFFICIAL
DROIDX_GAPPS := CoreGapps
