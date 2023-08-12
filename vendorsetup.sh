#!/bin/bash

echo 'Starting Cloning repos for p3s'
echo 'Cloning Kernel tree [1/6]'
# Kernel for exynos2100
rm -rf kernel/samsung/universal2100
git clone https://github.com/Exynos2100-common/android_kernel_samsung_universal2100.git kernel/samsung/universal2100 -b FWK2

echo 'Cloning Common Tree [2/6]'
# Common tree for universal2100-common
rm -rf device/samsung/universal2100-common
git clone https://github.com/Exynos2100-common/android_device_samsung_universal2100-common.git device/samsung/universal2100-common -b elixir

echo 'Cloning Vendor Trees [3/6]'
# Vendor blobs for p3s and universal2100-common
rm -rf vendor/samsung/p3s
git clone https://github.com/Exynos2100-common/android_vendor_samsung_p3s.git vendor/samsung/p3s
rm -rf vendor/samsung/universal2100-common
git clone https://github.com/Exynos2100-common/android_vendor_samsung_universal2100-common.git vendor/samsung/universal2100-common

echo 'Cloning Firmware Updater [4/6]'
# Firmware updater
rm -rf vendor/firmware
git clone https://github.com/Exynos2100-common/vendor_firmware.git vendor/firmware

echo 'Cloning Hardware Samsung [5/6]'
# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/Exynos2100-common/android_hardware_samsung.git hardware/samsung -b cherish
mv nfc hardware/samsung

echo 'Cloning Samsung_Slsi and Linaro BSP repos [6/6]'
# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone https://github.com/Exynos2100-common/android_device_samsung_slsi_sepolicy.git device/samsung_slsi/sepolicy

# Linaro BSP
rm -rf hardware/samsung_slsi-linaro
git clone https://github.com/Exynos2100-common/android_hardware_samsung_slsi-linaro_graphics.git hardware/samsung_slsi-linaro/graphics -b 14
git clone https://github.com/Exynos2100-common/android_hardware_samsung_slsi-linaro_config.git hardware/samsung_slsi-linaro/config -b lineage-21
git clone https://github.com/Exynos2100-common/android_hardware_samsung_slsi-linaro_exynos.git hardware/samsung_slsi-linaro/exynos -b 14
git clone https://github.com/Exynos2100-common/android_hardware_samsung_slsi-linaro_openmax.git hardware/samsung_slsi-linaro/openmax -b lineage-21
git clone https://github.com/Exynos2100-common/android_hardware_samsung_slsi-linaro_exynos5.git hardware/samsung_slsi-linaro/exynos5 -b 14
git clone https://github.com/Exynos2100-common/android_hardware_samsung_slsi-linaro_interfaces.git hardware/samsung_slsi-linaro/interfaces -b lineage-21
git clone https://github.com/Exynos2100-common/android_hardware_samsung-ext_interfaces.git hardware/samsung-ext/interfaces -b lineage-21
