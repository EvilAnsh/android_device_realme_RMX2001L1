rm -rf hardware/oplus
rm -rf packages/apps/Aperture
git clone https://github.com/Aeoniixx/android_packages_apps_Aperture -b lineage-22.1 --depth 1 packages/apps/Aperture

echo 'Generating keys'
rm -rf vendor/lineage-priv/keys
croot && git clone https://github.com/EvilAnsh/vendor_evolution-priv_keys-template vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
cd ..
cd ..
cd ..

echo 'Starting to clone stuffs needed for your device'

echo 'Cloning RM6785-common Device tree [1/6]'
# Common Device
rm -rf device/realme/RM6785-common
if [ ! -d "device/realme/RM6785-common" ]; then
    mkdir -p device/realme/RM6785-common
    git clone https://github.com/EvilAnsh/android_device_realme_RM6785-common --depth 1 -b flare device/realme/RM6785-common
fi

echo 'Cloning RM6785-common Vendor tree [2/6]'
# Vendor
rm -rf vendor/realme/RM6785-common
if [ ! -d "vendor/realme/RM6785-common" ]; then
    mkdir -p vendor/realme/RM6785-common
    git clone https://github.com/PixelOS-Devices/vendor_realme_RM6785-common.git --depth 1 -b fifteen vendor/realme/RM6785-common
fi

echo 'Cloning Kernel tree [3/6]'
# Kernel
rm -rf kernel/realme/mt6785
if [ ! -d "kernel/realme/mt6785" ]; then
    mkdir -p kernel/realme/mt6785
    git clone https://github.com/realme-mt6785-devs/android_kernel_realme_mt6785.git --depth 1 -b lineage-22.1 kernel/realme/mt6785
fi

echo 'Cloning Mediatek SEpolicy_vndr [4/6]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git --depth 1 -b lineage-22.1 device/mediatek/sepolicy_vndr 
fi
echo 'Cloning Hardware Mediatek [5/6]'
# Hardware
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/LineageOS/android_hardware_mediatek.git --depth 1 -b lineage-22.1 hardware/mediatek
fi
echo 'Cloning Hardware Compat [6/6]'
rm -rf hardware/lineage/compat
if [ ! -d "hardware/lineage/compat" ]; then
    mkdir -p hardware/lineage/compat
    git clone https://github.com/LineageOS/android_hardware_lineage_compat.git --depth 1 -b lineage-22.1 hardware/lineage/compat
fi
echo 'Completed, Now proceeding to lunch'
