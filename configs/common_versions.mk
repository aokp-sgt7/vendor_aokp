# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/aokp/tools/getdate)
BUILD_DEVICE = $(shell vendor/aokp/tools/getdevice)

ifneq ($(AOKP_BUILD),)
	# AOKP_BUILD=<goo version int>/<build string>
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.goo.developerid=stimpz0r \
	    ro.goo.rom=aokpsgt7-jb \
	    ro.goo.version=$(shell echo $(AOKP_BUILD) | cut -d/ -f1) \
		ro.aokp.version=$(TARGET_PRODUCT)_jb_$(shell echo $(AOKP_BUILD) | cut -d/ -f2)
else
	PRODUCT_PROPERTY_OVERRIDES += \
   	    ro.aokp.version=aokp_sgt7-$(BUILD_DEVICE)-jb_$(DATE) \
	    ro.goo.developerid=stimpz0r \
	    ro.goo.rom=aokpsgt7-jb \
	    ro.goo.version=1
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
