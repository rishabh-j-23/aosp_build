rm -rf .repo/local_manifests/ && \
# Clone local_manifests repository
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs --depth=1 && \
git clone https://github.com/rishabh-j-23/local_manifests --depth 1 -b main .repo/local_manifests && \
# Sync the repositories
/opt/crave/resync.sh && \
# Set up build environment
export BUILD_USERNAME=Ryxke && \
export BUILD_HOSTNAME=crave && \
source build/envsetup.sh && \
# Build the ROM
lunch aosp_ginkgo-ap2a-user && \
make installclean && \
mka bacon
