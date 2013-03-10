$(call inherit-product, device/samsung/p1/full_p1.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p1-common

PRODUCT_NAME := aokp_p1
PRODUCT_DEVICE := p1
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-P1000
PRODUCT_RELEASE_NAME := P1

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_600_1024.zip:system/media/bootanimation.zip
