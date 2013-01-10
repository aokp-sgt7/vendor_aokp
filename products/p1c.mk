$(call inherit-product, device/samsung/p1c/full_p1c.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)
$(call inherit-product, vendor/aokp/configs/cdma.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p1c

PRODUCT_NAME := aokp_p1c
PRODUCT_DEVICE := p1c
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH-I800
PRODUCT_RELEASE_NAME := P1C

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_600_1024.zip:system/media/bootanimation.zip
