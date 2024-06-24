#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lge/phoenix_sprout

TARGET_OTA_ASSERT_DEVICE := phoenix_sprout

include device/lge/phoenix-common/BoardConfigCommon.mk

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# A/B
AB_OTA_PARTITIONS += \
    dtbo \
    vbmeta

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Kernel
TARGET_KERNEL_CONFIG := lineageos_phoenix_lgu_kr_defconfig
BOARD_KERNEL_SEPARATED_DTBO := true
