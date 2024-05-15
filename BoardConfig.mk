#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lge/phoenix_sprout

TARGET_OTA_ASSERT_DEVICE := phoenix_sprout

include device/lge/msm8998-common/BoardConfigCommon.mk

# inherit from the proprietary version
include vendor/lge/phoenix_sprout/BoardConfigVendor.mk

# Platform
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Android Verified Boot
BOARD_AVB_ENABLE := false

TARGET_DAC_PLUGIN_INCLUDE_DIR := $(DEVICE_PATH)/include

# A/B
AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

AB_OTA_UPDATER := true

# Kernel
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
TARGET_KERNEL_CONFIG := lineageos_phoenix_sprout_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2894069760
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_USERDATAIMAGE_PARTITION_SIZE := 68719476736
BOARD_VENDORIMAGE_PARTITION_SIZE := 734003200
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOOTLOADER_MESSAGE_OFFSET := 128
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Vendor SPL
VENDOR_SECURITY_PATCH := 2022-01-01
