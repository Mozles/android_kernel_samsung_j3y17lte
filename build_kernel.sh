#!/bin/bash
export CARCH=aarch64 
export SUDO_APK='abuild-apk --no-progress' 
export CROSS_COMPILE=aarch64-alpine-linux-musl- 
export CC=aarch64-alpine-linux-musl-gcc 
export RUSTC_WRAPPER=/usr/bin/sccache 
export GOCACHE=/home/pmos/.cache/go-build 
export HOME=/home/pmos

make exynos7570-j3y17lte_defconfig
make -j8
