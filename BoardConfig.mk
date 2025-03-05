#
# Copyright (C) 2021 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/gts7lwifi

# For building with minimal manifest

ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_CPU_VARIANT_RUNTIME := kryo585

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := $(TARGET_ARCH_VARIANT)
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := $(TARGET_CPU_VARIANT)
TARGET_2ND_CPU_VARIANT_RUNTIME := $(TARGET_CPU_VARIANT_RUNTIME)

TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := $(PRODUCT_PLATFORM)
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := $(TARGET_BOOTLOADER_BOARD_NAME)
QCOM_BOARD_PLATFORMS += $(TARGET_BOARD_PLATFORM)

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
TARGET_KERNEL_CLANG_COMPILE := true
# Kernel
BOARD_KERNEL_IMAGE_NAME        := Image.gz
BOARD_BOOT_HEADER_VERSION      := 2
BOARD_KERNEL_SEPARATED_DTBO    := true
BOARD_INCLUDE_DTB_IN_BOOTIMG   := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_CMDLINE := \
    androidboot.hardware=qcom \
    androidboot.memcg=1 \
    androidboot.usbcontroller=a600000.dwc3 \
    console=null \
    firmware_class.path=/vendor/firmware_mnt/image \
    loop.max_part=7 \
    lpm_levels.sleep_disabled=1 \
    msm_rtb.filter=0x237 \
    printk.devkmsg=on \
    service_locator.enable=1 \
    swiotlb=2048\
    androidboot.selinux=permissive

BOARD_KERNEL_BASE          := 0x00000000
BOARD_KERNEL_PAGESIZE      := 4096
BOARD_MKBOOTIMG_ARGS := \
    --dtb $(DEVICE_PATH)/prebuilt/dtb.img \
    --board SRPUF17A008 \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x02000000 \
    --tags_offset 0x01e00000 \
    --dtb_offset 0x01f00000 \
    --header_version 2


# TARGET_KERNEL_SOURCE := kernel/samsung/sm8250
# TARGET_KERNEL_CONFIG := vendor/kona-sec-perf_defconfig

BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    efs \
    omr \
    optics \
    prism \
    spu

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Assert
TARGET_OTA_ASSERT_DEVICE := gts7lwifi gts7l

# Kenel recovery dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 71303168
BOARD_DTBOIMG_PARTITION_SIZE := 10485760

BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 10171187200
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system product odm vendor
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 10166992896 # (BOARD_SUPER_PARTITION_SIZE - 4MB)

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Encryption
# BOARD_USES_QCOM_FBE_DECRYPTION := true
# BOARD_USES_METADATA_PARTITION := true

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := kona
TARGET_BOARD_PLATFORM_GPU := qcom-adreno650
QCOM_BOARD_PLATFORMS += kona

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
RECOVERY_SDCARD_ON_DATA := true
# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := 1
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 128
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone50/temp"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_FASTBOOTD := true
TW_INCLUDE_CRYPTO := false
TW_NO_EXFAT_FUSE := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_LPTOOLS := true
TW_FRAMERATE := 60

# TWRP Configuration: Logd
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP := true


# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 86888448

# PBRP flags
PB_DISABLE_DEFAULT_DM_VERITY := true
PB_DISABLE_DEFAULT_PATCH_AVB2 := true
