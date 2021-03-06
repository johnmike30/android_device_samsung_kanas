# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from SPRD common configs
-include device/samsung/sprd-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/kanas/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOARD_PLATFORM_GPU := mali-400 MP
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := SC7735S
BOARD_VENDOR := samsung

# Some magic
SOC_SCX35 := true

# Config u-boot
TARGET_NO_BOOTLOADER := true

# Img configuration
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1111490560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2457862144
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# RIL
BOARD_RIL_CLASS += ../../../device/samsung/kanas/ril
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kanas/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/kanas/bluetooth/libbt_vndcfg.txt

# FM
BOARD_HAVE_FMRADIO_BCM := false

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4330
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI := true

# HWC and Graphics config
#BOARD_EGL_CFG := device/samsung/kanas/configs/egl/egl.cfg
#BOARD_USE_MHEAP_SCREENSHOT := true
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
#HWUI_COMPILE_FOR_PERF := true
#TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
#USE_SPRD_HWCOMPOSER := true
#USE_OPENGL_RENDERER := true
#USE_OVERLAY_COMPOSER_GPU := true
#DEVICE_FORCE_VIDEO_GO_OVERLAYCOMPOSER := true
#USE_SPRD_DITHER := true
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# Audio
#BOARD_USES_TINYALSA_AUDIO := true
#BOARD_USES_SS_VOIP := true
#BOARD_USE_LIBATCHANNEL_WRAPPER := true
#USE_LEGACY_AUDIO_POLICY := 1

# Media
#COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
#COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS


# Graphics
HWUI_COMPILE_FOR_PERF := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
USE_OVERLAY_COMPOSER_GPU := true

# HWComposer
USE_SPRD_HWCOMPOSER := true
USE_SPRD_DITHER := true

# Audio
BOARD_USE_LIBATCHANNEL_WRAPPER := true

# Media
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480


# Board specific features
BOARD_USE_SAMSUNG_COLORFORMAT := true
COMMON_GLOBAL_CFLAGS += -DUSE_LEGACY_BLOBS

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.sc8830

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_NO_CHARGER_LED := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging
BACKLIGHT_PATH := /sys/class/backlight/panel/brightness

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.selinux=permissive androidboot.hardware=sc8830
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := KnightOwlsKernel_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/kanas

# Init
TARGET_NR_SVC_SUPP_GIDS := 24
TARGET_PROVIDES_INIT_RC := true
TARGET_NEEDS_PROP_INIT_HACK := true

# Assert
TARGET_OTA_ASSERT_DEVICE := kanas,kanas3g,kanas3gxx,kanas3gub,kanas3gnfcxx,kanas3gnfc,SM-G355H,SM-G355HN,SM-G355M

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/kanas/sepolicy

# Low memory config
MALLOC_SVELTE := dlmalloc
BOARD_USES_LEGACY_MMAP := true

# Enable dex-preoptimization to speed up the first boot sequence
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

# Power
TARGET_POWERHAL_VARIANT := sprd

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/samsung/kanas/rootdir/fstab.sc8830
TARGET_RECOVERY_TWRP := false

ifeq ($(TARGET_RECOVERY_TWRP),true)
RECOVERY_VARIANT := twrp
TARGET_USES_LOGD := true
WITH_CM_CHARGER := false
# TWRP
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/platform/sec-thermistor/temperature"
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_TOOLBOX := true
TWRP_INCLUDE_LOGCAT := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_THEME := portrait_mdpi
TWHAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
# UMS
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
endif
