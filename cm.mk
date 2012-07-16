$(call inherit-product, device/samsung/d2dcm/full_d2dcm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2dcm TARGET_DEVICE=d2dcm BUILD_FINGERPRINT="d2dcm-user 4.0.4 IMM76D SC06DUVALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2dcm/d2dcm:4.0.4/IMM76D/SC06DVALEM:user/release-keys"

TARGET_BOOTANIMATION_NAME := vertical-720x1280

PRODUCT_NAME := cm_d2dcm
PRODUCT_DEVICE := d2dcm

