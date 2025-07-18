#
# Copyright 2014 The Android Open-Source Project
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
include device/hardkernel/rk356x/BoardConfig.mk
BUILD_WITH_GO_OPT := false

# AB image definition
BOARD_USES_AB_IMAGE := false
BOARD_ROCKCHIP_VIRTUAL_AB_ENABLE := false

ifeq ($(strip $(BOARD_USES_AB_IMAGE)), true)
    include device/hardkernel/common/BoardConfig_AB.mk
    TARGET_RECOVERY_FSTAB := device/hardkernel/rk356x/odroidm1/recovery.fstab_AB
endif

BOARD_HAVE_ON_BOARD_BLUETOOTH := false
#BOARD_WIFI_SUPPORT := false

PRODUCT_UBOOT_CONFIG := odroid_rk3568
PRODUCT_KERNEL_DTS := rk3568-odroid-m1-android
BOARD_CAMERA_SUPPORT_EXT := true
BOARD_HS_ETHERNET := true
BOARD_SUPPORT_HDMI_CEC := true
PRODUCT_KERNEL_CONFIG += odroidm1.config

vendor_lkm_dir := device/hardkernel/rk356x/modules/
BOARD_VENDOR_KERNEL_MODULES += \
    $(vendor_lkm_dir)/8821cu.ko \
    $(vendor_lkm_dir)/8812au.ko \
    $(vendor_lkm_dir)/btbcm.ko \
    $(vendor_lkm_dir)/btrtl.ko \
    $(vendor_lkm_dir)/btusb.ko \
    $(vendor_lkm_dir)/mt76.ko \
    $(vendor_lkm_dir)/mt76x2-common.ko \
    $(vendor_lkm_dir)/mt76x2u.ko \
    $(vendor_lkm_dir)/mt76x02-usb.ko \
    $(vendor_lkm_dir)/mt76x0-common.ko \
    $(vendor_lkm_dir)/mt76x0u.ko \
    $(vendor_lkm_dir)/mt76x02-lib.ko \
    $(vendor_lkm_dir)/mt76-usb.ko

BUILD_BROKEN_DUP_RULES := true

BOARD_SUPPORT_MULTIAUDIO := true
