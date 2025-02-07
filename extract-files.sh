#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=phoenix_sprout
export DEVICE_SPECIFIED_COMMON=phoenix-common
export VENDOR=lge
export VENDOR_SPECIFIED_COMMON=${VENDOR}

"./../../${VENDOR_SPECIFIED_COMMON}/${DEVICE_SPECIFIED_COMMON}/extract-files.sh" "$@"
