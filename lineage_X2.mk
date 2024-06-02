#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
# AlphaDroid
ALPHA_BUILD_TYPE := UNOFFICIAL
ALPHA_MAINTAINER := JigenxOhtsusuki
WITH_GAPPS := true

# Inherit from X2 device
$(call inherit-product, device/realme/X2/device.mk)
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X2
PRODUCT_DEVICE := X2
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme X2
PRODUCT_MANUFACTURER := realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1993L1-user 11 RKQ1.201112.002 1639416071279 release-keys"

BUILD_FINGERPRINT := realme/RMX1993/RMX1993L1:11/RKQ1.201112.002/1639416071279:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-oppo
