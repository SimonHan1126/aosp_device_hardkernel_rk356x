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

PRODUCT_MAKEFILES := \
        $(LOCAL_DIR)/rk3566_tgo/rk3566_tgo.mk \
        $(LOCAL_DIR)/rk3566_t/rk3566_t.mk \
        $(LOCAL_DIR)/rk3568_t/rk3568_t.mk \
        $(LOCAL_DIR)/odroidm1s/odroidm1s.mk \
        $(LOCAL_DIR)/odroidm1/odroidm1.mk

COMMON_LUNCH_CHOICES := \
    rk3566_tgo-userdebug \
    rk3566_tgo-user \
    rk3566_t-userdebug \
    rk3566_t-user \
    rk3568_t-userdebug \
    rk3568_t-user \
    odroidm1-userdebug \
    odroidm1-user \
    odroidm1s-userdebug \
    odroidm1s-user
