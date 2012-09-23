$(call inherit-product, device/samsung/p1/full_p1n.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet_small.mk)
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p1

PRODUCT_NAME := aokp_p1n
PRODUCT_DEVICE := p1n
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-P1000N
PRODUCT_RELEASE_NAME := P1N

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_600_1024.zip:system/media/bootanimation.zip
