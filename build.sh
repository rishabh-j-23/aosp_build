git clone https://github.com/PixelOS-Devices/device_xiaomi_ginkgo.git device/xiaomi/ginkgo && \
git clone https://github.com/PixelOS-Devices/kernel_xiaomi_ginkgo.git kernel/xiaomi/ginkgo && \
git clone https://github.com/PixelOS-Devices/vendor_xiaomi_ginkgo.git vendor/xiaomi/ginkgo && \

/opt/crave/resync.sh && \
source build/envsetup.sh && \
lunch aosp_ginkgo-user && \
mka bacon 
