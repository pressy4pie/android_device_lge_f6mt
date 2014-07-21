LOCAL_PATH := device/lge/f6mt
RAMDISK_DIR := device/lge/f6mt/root

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/f6mt/f6mt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/f6mt/overlay


$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=mtp,adb
    
# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Ramdisk
PRODUCT_COPY_FILES += \
   $(RAMDISK_DIR)/bootlogo.f6_res_images-timestamp:root/bootlogo.f6_res_images-timestamp \
   $(RAMDISK_DIR)/charger:root/charger \
   $(RAMDISK_DIR)/chargerlogo_res_images-timestamp:root/chargerlogo_res_images-timestamp \
   $(RAMDISK_DIR)/fstab.qcom:root/fstab.qcom \
   $(RAMDISK_DIR)/init.f6mt.rc:root/init.f6mt.rc \
   $(RAMDISK_DIR)/init.fx3.rc:root/init.fx3.rc \
   $(RAMDISK_DIR)/init.lge.cmm.usb.sh:root/init.lge.cmm.usb.sh \
   $(RAMDISK_DIR)/init.lge.early.rc:root/init.lge.early.rc \
   $(RAMDISK_DIR)/init.lge.rc:root/init.lge.rc \
   $(RAMDISK_DIR)/init.lge.usb.rc:root/init.lge.usb.rc \
   $(RAMDISK_DIR)/init.lge.usb.sh:root/init.lge.usb.sh \
   $(RAMDISK_DIR)/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
   $(RAMDISK_DIR)/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
   $(RAMDISK_DIR)/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
   $(RAMDISK_DIR)/init.qcom.rc:root/init.qcom.rc \
   $(RAMDISK_DIR)/init.qcom.sh:root/init.qcom.sh \
   $(RAMDISK_DIR)/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
   $(RAMDISK_DIR)/init.usb.rc:root/init.usb.rc \
   $(RAMDISK_DIR)/initlogo.rle:root/initlogo.rle \
   $(RAMDISK_DIR)/ueventd.f6mt.rc:root/charger \
   $(RAMDISK_DIR)/charger:root/ueventd.rc 

PRODUCT_COPY_FILES += \
   $(RAMDISK_DIR)/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
   $(RAMDISK_DIR)etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
   $(RAMDISK_DIR)/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
   $(RAMDISK_DIR)/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
   $(RAMDISK_DIR)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
   $(RAMDISK_DIR)/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh


# loki
PRODUCT_PACKAGES += \
    loki.sh \
    loki_flash \
    loki_patch \
    loki_bootloaders \
    unlocked_bootloaders

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

PRODUCT_PACKAGES += \
    gralloc.msm8960 \
    libgenlock \
    lights.msm8960 \
    hwcomposer.msm8960 \
    memtrack.msm8960

PRODUCT_PACKAGES += \
    audio.msm8960 \
    audio_policy.msm8960

PRODUCT_PACKAGES += \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc

PRODUCT_PACKAGES += \
    wlan_module_symlink \
    wlan_persist_symlink \
    wcnss_service

PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory


# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/osp3-input.idc:system/usr/idc/osp3-input.idc \
    $(LOCAL_PATH)/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/qwerty2.idc:system/usr/idc/qwerty2.idc 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermald-8930.conf:system/etc/thermald-8930.conf \
    $(LOCAL_PATH)/xtwifi.conf:system/etc/xtwifi.conf \
    $(LOCAL_PATH)/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml




#bootimages. THIS SUX
PRODUCT_COPY_FILES += \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00001.rle:root/bootimages/boot_logof6_00001.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00002.rle:root/bootimages/boot_logof6_00002.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00003.rle:root/bootimages/boot_logof6_00003.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00004.rle:root/bootimages/boot_logof6_00004.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00005.rle:root/bootimages/boot_logof6_00005.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00006.rle:root/bootimages/boot_logof6_00006.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00007.rle:root/bootimages/boot_logof6_00007.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00008.rle:root/bootimages/boot_logof6_00008.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00009.rle:root/bootimages/boot_logof6_00009.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00010.rle:root/bootimages/boot_logof6_00010.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00011.rle:root/bootimages/boot_logof6_00011.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00012.rle:root/bootimages/boot_logof6_00012.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00013.rle:root/bootimages/boot_logof6_00013.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00014.rle:root/bootimages/boot_logof6_00014.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00015.rle:root/bootimages/boot_logof6_00015.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00016.rle:root/bootimages/boot_logof6_00016.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00017.rle:root/bootimages/boot_logof6_00017.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00018.rle:root/bootimages/boot_logof6_00018.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00019.rle:root/bootimages/boot_logof6_00019.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00020.rle:root/bootimages/boot_logof6_00020.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00021.rle:root/bootimages/boot_logof6_00021.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00022.rle:root/bootimages/boot_logof6_00022.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00023.rle:root/bootimages/boot_logof6_00023.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00024.rle:root/bootimages/boot_logof6_00024.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00025.rle:root/bootimages/boot_logof6_00025.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00026.rle:root/bootimages/boot_logof6_00026.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00027.rle:root/bootimages/boot_logof6_00027.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00028.rle:root/bootimages/boot_logof6_00028.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00029.rle:root/bootimages/boot_logof6_00029.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00030.rle:root/bootimages/boot_logof6_00030.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00031.rle:root/bootimages/boot_logof6_00031.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00032.rle:root/bootimages/boot_logof6_00032.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00033.rle:root/bootimages/boot_logof6_00033.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00034.rle:root/bootimages/boot_logof6_00034.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00035.rle:root/bootimages/boot_logof6_00035.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00036.rle:root/bootimages/boot_logof6_00036.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00037.rle:root/bootimages/boot_logof6_00037.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00038.rle:root/bootimages/boot_logof6_00038.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00039.rle:root/bootimages/boot_logof6_00039.rle 



