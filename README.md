# OpenWrt custom packages feed

List package repository: https://rafaelcalleja.github.io/openwrt-packages/resources/

## Description

GitHub Pages repository for my own OpenWrt binary packages feed.

## Usage

```
wget https://rafaelcalleja.github.io/openwrt-packages/public.key
opkg-key add public.key
echo 'src/gz custom_feed https://rafaelcalleja.github.io/openwrt-packages/resources/18.06.7/targets/ramips/mt7621/packages' >> /etc/opkg/customfeeds.conf
opkg update
```

# OpenWrt packages feed

## Description

This is the OpenWrt "packages"-feed containing community-maintained build scripts, options and patches for applications, modules and libraries used within OpenWrt.

Installation of pre-built packages is handled directly by the **opkg** utility within your running OpenWrt system or by using the [OpenWrt SDK](https://openwrt.org/docs/guide-developer/using_the_sdk) on a build system.

## Usage

This repository is intended to be layered on-top of an OpenWrt buildroot. If you do not have an OpenWrt buildroot installed, see the documentation at: [OpenWrt Buildroot – Installation](https://openwrt.org/docs/guide-developer/build-system/install-buildsystem) on the OpenWrt support site.

This feed is enabled by default. To install all its package definitions, run:
```
./scripts/feeds update packages
./scripts/feeds install -a -p packages
```

## License

See [LICENSE](LICENSE) file.
 
## Package Guidelines

See [CONTRIBUTING.md](CONTRIBUTING.md) file.

