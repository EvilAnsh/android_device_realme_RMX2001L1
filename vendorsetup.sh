echo 'Starting to clone stuffs needed for your device'

echo 'Cloning RM6785-common Device tree [1/5]'
# Common Device
rm -rf device/realme/RM6785-common
if [ ! -d "device/realme/RM6785-common" ]; then
    mkdir -p device/realme/RM6785-common
    git clone https://github.com/EvilAnsh/android_device_realme_RM6785-common --depth 1 -b vic device/realme/RM6785-common
fi

echo 'Cloning RM6785-common Vendor tree [2/5]'
# Vendor
rm -rf vendor/realme/RM6785-common
if [ ! -d "vendor/realme/RM6785-common" ]; then
    mkdir -p vendor/realme/RM6785-common
    git clone https://github.com/realme-mt6785-devs/proprietary_vendor_realme_RM6785-common --depth 1 -b lineage-22 vendor/realme/RM6785-common
fi

echo 'Cloning Kernel tree [3/5]'
# Kernel
rm -rf kernel/realme/mt6785
if [ ! -d "kernel/realme/mt6785" ]; then
    mkdir -p kernel/realme/mt6785
    git clone https://github.com/RisingTechOSS-Devices/kernel_realme_mt6785 --depth 1 -b fifteen kernel/realme/mt6785
fi

echo 'Cloning Mediatek SEpolicy_vndr [4/5]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone https://github.com/YAAP/device_mediatek_sepolicy_vndr.git --depth 1 -b fifteen device/mediatek/sepolicy_vndr 
fi

echo 'Cloning Hardware Mediatek [5/5]'
# Hardware
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/YAAP/hardware_mediatek.git --depth 1 -b fifteen hardware/mediatek
fi

echo 'Completed, Now proceeding to lunch'
