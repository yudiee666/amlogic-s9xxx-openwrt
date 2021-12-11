#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic S9xxx STB
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Uncomment a feed source
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
# sed -i 's/\"#src-git\"/\"src-git\"/g' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

# Add luci-app-openclash

svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/openwrt-openclash

pushd package/openwrt-openclash/tools/po2lmo && make && sudo make install 2>/dev/null && popd


# Add luci-app-passwall

svn co https://github.com/xiaorouji/openwrt-passwall/trunk package/openwrt-passwall
