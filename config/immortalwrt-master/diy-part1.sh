#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git packages https://github.com/immortalwrt/packages.git' feeds.conf.default
sed -i '$a src-git luci https://github.com/immortalwrt/luci.git' feeds.conf.default
sed -i '$a src-git routing https://github.com/openwrt/routing.git' feeds.conf.default
sed -i '$a src-git telephony https://github.com/openwrt/telephony.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git pack https://github.com/kenzok8/small-package' feeds.conf.default
# other
# rm -rf package/emortal/{autosamba,ipv6-helper}

