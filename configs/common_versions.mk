# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/aokp/tools/getdate)
BUILD_DEVICE = $(shell vendor/aokp/tools/getdevice)
AOKP_BRANCH=jb-mr1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aokp.version=aokp_sgt7-$(BUILD_DEVICE)-$(AOKP_BRANCH)_$(DATE) \
    ro.goo.developerid=stimpz0r \
    ro.goo.rom=aokpsgt7-jb \
    ro.goo.version=$(shell date +%s)

# we use ro.cm.device to keep it compatible with CM roms - incase someone is coming from (or going back to) a CM variant...
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.cm.device=$(BUILD_DEVICE)

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.aokp.branch=$(AOKP_BRANCH) \
        ro.aokp.device=$(AOKP_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
