#!/bin/bash

cd $HOME/linux
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
time make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j7 Image dtbs modules
