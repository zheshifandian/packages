#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python3-ncurses
$(call Package/python3/Default)
  TITLE+= ncurses module
  DEPENDS:=+python3-light +libncursesw
endef

define Package/python3-ncurses/description
$(call Package/python3/Default/description)

This package contains the ncurses module.
endef

$(eval $(call Py3BasePackage,python3-ncurses, \
	/usr/lib/python$(PYTHON3_VERSION)/curses \
	/usr/lib/python$(PYTHON3_VERSION)/lib-dynload/_curses.$(PYTHON3_SO_SUFFIX) \
	/usr/lib/python$(PYTHON3_VERSION)/lib-dynload/_curses_panel.$(PYTHON3_SO_SUFFIX) \
))
