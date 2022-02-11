#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/common.mk)

#GAPPS
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true

# ArcanaOS
ARCANA_DEVICE := Oneplus-8
ARCANA_MAINTAINER := Akarsh
WITH_GAPPS := true
WITH_LAWNCHAIR := true

# Blur
TARGET_USES_BLUR := true

# In Display Fingerprint Animations
EXTRA_UDFPS_ANIMATIONS := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2013

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus8
