include $(TOPDIR)/rules.mk

PKG_NAME := udp-tunnel
PKG_VERSION := 0.0.1
PKG_RELEASE := 1

PKG_BUILD_DIR := $(BUILD_DIR)/udp-tunnel-$(PKG_VERSION)
PKG_SOURCE_PROTO := git
PKG_SOURCE_URL := https://github.com/rfc1036/udptunnel.git
PKG_SOURCE_DATE := 2018-11-18
PKG_SOURCE_VERSION := 482ed94388a0dde68561584926c7d5c14f079f7e
PKG_MIRROR_HASH := df175bdd046d2ee6b10f25aba74475c404f3273361d148efc1ddbac7e555a219
PKG_SOURCE_SUBDIR := $(PKG_NAME)-$(PKG_VERSION)

MAKE_PATH := src
PKG_INSTALL := 0

include $(INCLUDE_DIR)/package.mk

define Package/udp-tunnel
  SECTION := net
  CATEGORY := Network
  TITLE := Tunnel UDP packets in a TCP connection
  URL := https://github.com/rfc1036/udptunnel
endef

define Package/udp-tunnel/description
  UDPTunnel is a small program which can tunnel UDP packets bi-directionally
  over a TCP connection. Its primary purpose (and original motivation) is to
  allow multi-media conferences to traverse a firewall which allows only outgoing
  TCP connections.
endef

define Package/udp-tunnel/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/udptunnel $(1)/usr/bin/
endef

$(eval $(call BuildPackage,udp-tunnel))
