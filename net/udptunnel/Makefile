include $(TOPDIR)/rules.mk

PKG_NAME := udptunnel
PKG_VERSION := 0.0.1
PKG_RELEASE := 2

PKG_SOURCE_PROTO := git
PKG_SOURCE_URL := https://github.com/rfc1036/udptunnel.git
PKG_SOURCE_DATE := 2018-11-18
PKG_SOURCE_VERSION := 482ed94388a0dde68561584926c7d5c14f079f7e
PKG_MIRROR_HASH := 3d3647c68782107b78dbcd98274b70475862d1646635e470c766db24795172f7

include $(INCLUDE_DIR)/package.mk

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
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/udptunnel $(1)/usr/bin
endef

$(eval $(call BuildPackage,udptunnel))
