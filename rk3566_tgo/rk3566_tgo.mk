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

# First lunching is T, api_level is 33
PRODUCT_SHIPPING_API_LEVEL := 33
PRODUCT_DTBO_TEMPLATE := $(LOCAL_PATH)/dt-overlay.in
PRODUCT_SDMMC_DEVICE := fe2b0000.dwmmc

include device/hardkernel/common/build/rockchip/DynamicPartitions.mk
include device/hardkernel/rk356x/rk3566_tgo/BoardConfig.mk
include device/hardkernel/common/BoardConfig.mk
$(call inherit-product, device/hardkernel/rk356x/device.mk)
$(call inherit-product, device/hardkernel/common/device.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := rk3566_tgo
PRODUCT_DEVICE := rk3566_tgo
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := rk3566_tgo
PRODUCT_MANUFACTURER := rockchip
PRODUCT_AAPT_PREF_CONFIG := hdpi

## add Rockchip properties
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=240
PRODUCT_PROPERTY_OVERRIDES += ro.wifi.sleep.power.down=true
PRODUCT_PROPERTY_OVERRIDES += persist.wifi.sleep.delay.ms=0
PRODUCT_PROPERTY_OVERRIDES += persist.bt.power.down=true
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.hdmirotationlock=true

