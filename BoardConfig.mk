#
# Copyright (C) 2022 The LineageOS Project
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

## Inherit from the common tree
include device/samsung/universal2100-common/BoardConfigCommon.mk

# Inherit from the proprietary configuration
include vendor/samsung/p3s/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/p3s

# Build Hax
BUILD_BROKEN_DUP_RULES := true

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG := exynos2100-p3sxxx_defconfig

# Kernel modules
BOOT_KERNEL_MODULES := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
KERNEL_MODULE_DIR := $(TARGET_KERNEL_DIR)/modules
KERNEL_MODULES := $(wildcard $(KERNEL_MODULE_DIR)/*.ko)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)
BOARD_BUILD_VENDOR_RAMDISK_IMAGE := true
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(addprefix $(KERNEL_MODULE_DIR)/, $(notdir $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)))
BOARD_RECOVERY_KERNEL_MODULES := $(addprefix $(KERNEL_MODULE_DIR)/, $(notdir $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)))
