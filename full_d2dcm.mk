# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
 
# d2dcm audio
#PRODUCT_COPY_FILES += \
#    device/samsung/d2dcm/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x

# d2dcm ramdisk
#PRODUCT_COPY_FILES += \
#    device/samsung/d2dcm/ramdisk/sbin/ext4sd:root/sbin/ext4sd \
#    device/samsung/d2dcm/ramdisk/sbin/felica_init.sh:root/sbin/felica_init.sh \
#    device/samsung/d2dcm/ramdisk/init.rc:root/init.rc \
#    device/samsung/d2dcm/ramdisk/init.carrier.rc:root/init.carrier.rc \
#    device/samsung/d2dcm/ramdisk/initlogo.rle:root/initlogo.rle \
#    device/samsung/d2dcm/ramdisk/ueventd.rc:root/ueventd.rc \
#    device/samsung/d2dcm/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
#    device/samsung/d2dcm/ramdisk/init.prop.sh:root/init.prop.sh

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from d2dcm device
$(call inherit-product, device/samsung/d2dcm/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_d2dcm
PRODUCT_DEVICE := d2dcm
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SC-06D
