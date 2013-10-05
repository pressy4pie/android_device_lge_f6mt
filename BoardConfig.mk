USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/fx3/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := fx3

TARGET_PRODUCT := fx3

BOARD_KERNEL_CMDLINE := androidboot.hardware=fx3mt user_debug=31 vmalloc=308M
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x82200000

TARGET_PREBUILT_KERNEL := device/lge/ms910/kernel

TARGET_KERNEL_CONFIG := fx3_mpcs_tmo_defconfig ## fx3_mpcs_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

BOARD_BOOTIMAGE_PARTITION_SIZE := 50331648
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5167382528
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5536481280
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_FSTAB := device/lge/fx3/recovery/fstab.fx3
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
ENABLE_LOKI_RECOVERY := true

BOARD_HAS_NO_SELECT_BUTTON := true
