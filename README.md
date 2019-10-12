Luci-app-redsocks
===
LuCI Support for RedSocks2

编译说明
---
 > 从 OpenWrt 的 [SDK][S] 编译  

```bash
# 解压下载好的 SDK
tar xjf OpenWrt-SDK-ar71xx-for-linux-x86_64-gcc-4.8-linaro_uClibc-0.9.33.2.tar.bz2
cd OpenWrt-SDK-ar71xx-*
# Clone 项目
git clone https://github.com/tominescu/redsocks-openwrt.git package/redsocks-openwrt
git clone https://github.com/tominescu/luci-app-redsocks.git package/luci-app-redsocks
# 编译 po2lmo (如果有po2lmo可跳过)
pushd package/luci-app-redsocks/tools/po2lmo
make && sudo make install
popd
# 选择要编译的包 LuCI -> 3. Applications
make menuconfig
# 开始编译
make package/luci-app-redsocks/compile V=99
```

 [S]: https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
