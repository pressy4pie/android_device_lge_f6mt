TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true

TARGET_KERNEL_CONFIG := f6_mpcs_tmo_us_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/f6

BOARD_KERNEL_CMDLINE := androidboot.hardware=f6mt user_debug=31 vmalloc=308M selinux=permissive
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := f6mt
TARGET_BOARD_INFO_FILE := device/lge/f6mt/board-info.txt

BOARD_USES_QCOM_HARDWARE := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_EGL_CFG := device/lge/f6mt/prebuilt/vendor/lib/egl/egl.cfg

TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

#audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_DEEP_BUFFER_PRIMARY := true
AUDIO_FEATURE_DYNAMIC_VOLUME_MIXER := true

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 50331648
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5167382528
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5536481280
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 97

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/f6mt/recovery/fstab.f6mt
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
ENABLE_LOKI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# prop version
-include vendor/lge/f6mt/BoardConfigVendor.mk

#enable sepolicy
BOARD_SEPOLICY_DIRS += \
        device/lge/f6mt/sepolicy

BOARD_SEPOLICY_UNION := \
       app.te \
       bluetooth.te \
       device.te \
       domain.te \
       drmserver.te \
       file.te \
       file_contexts \
       hci_init.te \
       init_shell.te \
       keystore.te \
       mediaserver.te \
       kickstart.te \
       nfc.te \
       rild.te \
       surfaceflinger.te \
       system.te \
       ueventd.te \
       wpa.te

