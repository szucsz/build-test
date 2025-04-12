git clone --depth 1 --branch master https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
cd linux
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
time make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j7 Image dtbs modules
