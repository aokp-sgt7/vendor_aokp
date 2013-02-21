# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/aokp/tools/getdate)
BUILD_DEVICE = $(shell vendor/aokp/tools/getdevice)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aokp.device=$(BUILD_DEVICE) \
    ro.aokp.version=aokp_sgt7-$(BUILD_DEVICE)-jb-mr1_$(DATE) \
    ro.goo.developerid=stimpz0r \
    ro.goo.rom=aokpsgt7-jb \
    ro.goo.version=$(shell date +%s)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
