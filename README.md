# TWRP Device Tree for Samsung Galaxy Tab S7 FE 5G

> ⚠️ **Attention:** Make sure to check your Model! Do **NOT** use on T733! This is **ONLY** for Devices with a Snapdragon 750G Chipset such as T730, T736B, T738U, ...

The Galaxy Tab S7 FE 5G (codenamed _"gts7xllite"_) is an upper-mid-range tablet from Samsung.

It was announced in May 2021 and released in June 2021.

## Device specifications

| Feature                | Specification                                                            |
| -----------------------| :----------------------------------------------------------------------- |
| Chipset                | Qualcomm SM7225 Snapdragon 750G 5G                                       |
| CPU                    | Octa-core (2x2.2 GHz Kryo 570 & 6x1.8 GHz Kryo 570)                      |
| GPU                    | Qualcomm Adreno 619                                                      |
| Memory                 | 4GB / 6GB / 8GB RAM (LPDDR4X)                                            |
| Shipped OS             | Android 11 (One UI 3.1) - Android 14 (One UI 6.1)                        |
| SIM                    | Hybrid Dual SIM (Nano-SIM, dual stand-by)                                |
| Storage                | 64GB / 128GB / 256GB (UFS 2.2)                                           |
| MicroSD                | Up to 1TB                                                                |
| Battery                | 10090mAh Li-Ion (non-removable), 45W fast charge                         |
| Dimensions             | 284.8 x 185 x 6.3 mm (11.21 x 7.28 x 0.25 in)                            |
| Display                | 12,4", 1600 x 2560 pixels, 16:10 ratio, TFT LCD, 60Hz (~243 ppi density) |
| Rear Camera 1 (IMX355) | 8 MP, f/1.9, 27.6mm (wide), 1/3.5", 1.12µm                               |
| Front Camera (GC5035)  | 5 MP, f/2.2, 25.4mm (wide), 1/4.44", 1.12µm                              |
| Sensors                | Accelerometer, Gyro, Proximity (virtual), Compass, Hall IC, Grip         |
| Extras                 | Dual speakers, MST                                                       |

## Device picture

<img src="https://image-us.samsung.com/SamsungUS/home/mobile/tablets/galaxy-tab-s7-fe/GalaxyTabS7plusLite_Combo_001_MysticBlack_1600x1200.png" width="60%"/>

## Kernel source

Extracted from Stock Firmware for the moment.

## How to build

This device tree was tested and is fully compatible with [minimal-manifest-twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp).

1. Set up the build environment following the instructions [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/Bush-cat/android_device_samsung_gts7xllite-twrp.git -b android-12.1 device/samsung/gts7xllite
```

3. To build:

```bash
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_gts7xllite-eng
mka recoveryimage
```

## Copyright

```
#
# Copyright (C) 2022 The TWRP Open Source Project
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
```
