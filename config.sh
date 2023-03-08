mkdir riceOSS
cd riceOSS
git config --global user.email "shwetankrai12@gmail.com" && git config --global user.name "Shwetank Rai"
repo init --depth=1 --no-repo-verify -u https://github.com/ricedroidOSS/android -b thirteen -g default,-mips,-darwin,-notdefault
repo sync -c --no-clone-bundle --force-remove-dirty --optimized-fetch --prune --force-sync -j8
git clone https://github.com/realme-mt6893-dev/android_device_realme_RMX3031 -b thirteen device/realme/RMX3031
git clone https://github.com/realme-mt6893-dev/android_kernel_realme_mt6893 -b thirteen kernel/realme/mt6893
git clone https://github.com/realme-mt6893-dev/proprietary_vendor_realme_RMX3031 -b thirteen vendor/realme/RMX3031
git clone https://github.com/ManshuTyagi/vendor_realme_RMX3031-firmware vendor/realme/RMX3031-firmware 
git clone https://github.com/PixelExperience/device_mediatek_sepolicy_vndr -b thirteen device/mediatek/sepolicy_vndr
cd device/realme/RMX3031
mv aosp_RMX2020.mk lineage_RMX3031.mk
sed -i "s/aosp/lineage/" AndroidProducts.mk
sed -i "s/aosp/lineage/" lineage_RMX3031.mk



