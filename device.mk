#
# Copyright (C) 2014 The CyanogenMod Project
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

## Get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/d2dcm/d2dcm-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/d2lte/d2lte-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/d2dcm/overlay

## overlays for dcm
DEVICE_PACKAGE_OVERLAYS += device/samsung/d2dcm/overlay-dcm

# Boot animation and screen size
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=320

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/d2dcm/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/d2dcm/audio/audio_policy.conf:system/etc/audio_policy.conf

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960 \
    libgps.utils \
    libloc_adapter \
    libloc_eng

PRODUCT_COPY_FILES += \
    device/samsung/d2dcm/gps/gps.conf:system/etc/gps.conf

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/d2dcm/keylayout/fsa9485.kl:system/usr/keylayout/fsa9485.kl \
    device/samsung/d2dcm/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/samsung/d2dcm/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/d2dcm/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/d2dcm/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/d2dcm/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/d2dcm/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl

# Logo
PRODUCT_COPY_FILES += \
    device/samsung/d2dcm/initlogo.rle:root/initlogo.rle

# Media configuration
PRODUCT_COPY_FILES += \
    device/samsung/d2dcm/media/media_profiles.xml:system/etc/media_profiles.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/d2dcm/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/d2dcm/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    libnetcmdiface

# Ramdisk
PRODUCT_PACKAGES += \
    felica_init.sh \
    init.carrier.rc \
    twrp.fstab

# common msm8960
$(call inherit-product, device/samsung/msm8960-common/msm8960.mk)
