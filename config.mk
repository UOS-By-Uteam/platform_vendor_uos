PRODUCT_BOOTANIMATION := vendor/uos/prebuilt/bootanimation/bootanimation.zip

#DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils
 
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# UOS Unique packages
PRODUCT_PACKAGES += \
    UOSLauncher \
    UOSWallpapers \
    UFileExplorer \
    UCalculator \
    UCompass \
    UOSUpdater \
    UCamera

# UCamera libs
PRODUCT_COPY_FILES += \
    vendor/uos/prebuilt/libs/UCamera/libimageprocess_jni.so:system/lib/libimageprocess_jni.so \
    vendor/uos/prebuilt/libs/UCamera/libmosaic_jni.so:system/lib/libmosaic_jni.so \
    vendor/uos/prebuilt/libs/UCamera/libqrcode_jni.so:system/lib/libqrcode_jni.so

DEVICE_PACKAGE_OVERLAYS += vendor/uos/overlay/common

# UOS Maintainers list
PRODUCT_COPY_FILES += \
    vendor/uos/Maintainers.txt:system/etc/Maintainers.txt

# Product version should match Android version
PRODUCT_VERSION_MAJOR = 0
PRODUCT_VERSION_MINOR = 1
PRODUCT_VERSION_OPTIONAL = 1

# Increase UOS Version with each major release.
UOS_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_OPTIONAL)

CM_VERSION := UOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_OPTIONAL)-$(shell date -u +%Y%m%d)-$(CM_BUILD)
CM_DISPLAY_VERSION := UOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_OPTIONAL)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.uos.version=$(CM_VERSION) \
    ro.uos.displayversion=$(UOS_VERSION) \
    ro.uos=1 \
    ro.modversion=$(CM_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.uos.display.version=$(CM_DISPLAY_VERSION)
