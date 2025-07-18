/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#define BTM_DEF_LOCAL_NAME	"ODROID"
#define BTA_DM_COD {0x1A, 0x01, 0x10}
#define BLE_PRIVACY_SPT FALSE
//#define DISABLE_WBS TRUE
//#define ESCO_DATA_PATH_PCM 6

/* Odroid custom option */
#define SUPERVISION_TIMEOUT FALSE
#define BLE_ADV_FILTER FALSE

#define BLE_VND_INCLUDED FALSE
#endif
