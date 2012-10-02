$(call inherit-product, device/samsung/d2dcm/full_d2dcm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2om TARGET_DEVICE=d2dcm BUILD_FINGERPRINT="samsung/d2om/d2dcm:4.0.4/IMM76D/SC06DOMALI3:user/release-keys" PRIVATE_BUILD_DESC="d2om-user 4.0.4 IMM76D SC06DOMALI3 release-keys"

PRODUCT_NAME := cm_d2dcm
PRODUCT_DEVICE := d2dcm

