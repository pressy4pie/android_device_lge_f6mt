#
# Copyright (C) 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true

TARGET_PREBUILT_KERNEL := device/lge/f6mt/kernel
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#TARGET_KERNEL_CONFIG := f6_mpcs_tmo_defconfig

#selinux permissive to try to get twrp booting
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
BOARD_EGL_CFG := device/lge/f6mt/prebuilt/lib/egl/egl.cfg

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
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB := device/lge/f6mt/recovery/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
ENABLE_LOKI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := false
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
AM_CONNOR := true
#BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/msm_fb.525569/leds/lcd-backlight/brightness\"

# TWRP is not working yet
DEVICE_RESOLUTION := 540x960
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

TW_BRIGHTNESS_PATH := "/sys/devices/platform/msm_fb.525569/leds/lcd-backlight/brightness"

TW_NO_REBOOT_BOOTLOADER := true 
TW_NO_USB_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true

# prop version
-include vendor/moto/condor/BoardConfigVendor.mk
