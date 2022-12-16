include $(TOPDIR)/rules.mk

PKG_NAME := udptunnel
PKG_VERSION := 0.0.1
PKG_RELEASE := 1

PKG_SOURCE := $(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL := https://github.com/rafaelcalleja/udptunnel/archive/refs/tags/$(PKG_VERSION)
PKG_HASH := 23968c27c8c6cc2e45ef2ef7b934813fc83410cd235e0503373e98ebbabf68c7
#PKG_BUILD_DIR := $(BUILD_DIR)/udptunnel-$(PKG_VERSION)/.pkgdir
#PKG_BUILD_DIR := /tmp
#PKG_CONFIG_DEPENDS := libuuid

#MAKE_PATH := src
PKG_INSTALL := 1

include $(INCLUDE_DIR)/package.mk

define Build/Prepare
	$(Build/Prepare/Default)
endef

define Package/udptunnel
  SECTION := net
  CATEGORY := Network
  TITLE := Tunnel UDP packets in a TCP connection
  URL := https://github.com/rfc1036/udptunnel
endef

define Package/udptunnel/description
  UDPTunnel is a small program which can tunnel UDP packets bi-directionally
  over a TCP connection. Its primary purpose (and original motivation) is to
  allow multi-media conferences to traverse a firewall which allows only outgoing
  TCP connections.
endef

define Package/udptunnel/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/udptunnel $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,udptunnel))
