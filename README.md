# OpenWrt custom packages feed

## Description

GitHub Pages repository for my own OpenWrt binary packages feed.

## Usage

```
wget https://rafaelcalleja.github.io/openwrt-packages/public.key
opkg-key add public.key
echo 'src/gz custom_feed https://rafaelcalleja.github.io/openwrt-packages/resources/18.06.7/targets/ramips/mt7621/packages' >> /etc/opkg/customfeeds.conf
opkg update
```
