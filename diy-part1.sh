#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/kenzok8/openwrt-packages.git  package/openwrt-packages
git clone https://github.com/kenzok8/small.git  package/openwrt-small
sed -i 's/1.14/1.15/g' feeds/packages/lang/golang/golang/Makefile
sed -i 's/=4/=2/g' feeds/packages/lang/golang/golang/Makefile
sed -i 's/7011af3bbc2ac108d1b82ea8abb87b2e63f78844f0259be20cde4d42c5c40584/28bf9d0bcde251011caae230a4a05d917b172ea203f2a62f2c2f9533589d4b4d/g' feeds/packages/lang/golang/golang/Makefile
