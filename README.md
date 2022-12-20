# Openwrt Custom Repository

## Enable github pages

Repository: https://rafaelcalleja.github.io/openwrt-packages/

## Configure:

1. Add new repository

```
#/etc/opkg/customfeeds.conf
src/gz custom_feed https://rafaelcalleja.github.io/openwrt-packages/resources/18.06.7/targets/ramips/mt7621/packages
``` 

2. Find fingerprint and add Verification Key from .keys repository folder.

```
wget https://raw.githubusercontent.com/rafaelcalleja/openwrt-packages/main/.keys/7b1392757f69d862  -O /etc/opkg/keys/7b1392757f69d862
```

3. Update openwrt opkg

```
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

