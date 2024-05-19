################################################################################
#
# fonts-droid
#
################################################################################

FONTS_DROID_VERSION = b9a519edd251133dafe2029357d351095ecd9f0e
FONTS_DROID_SITE = https://salsa.debian.org/fonts-team/fonts-android/-/archive/$(FONTS_DROID_VERSION)
FONTS_DROID_SOURCE = fonts-android-$(FONTS_DROID_VERSION).tar.gz
FONTS_DROID_LICENSE = Apache-2.0
FONTS_DROID_STRIP_COMPONENTS = 0

# We cannot verify the hash because googlesource.com produces an archive
# with a different hash on every request.
#
# This still issues a warning.
BR_NO_CHECK_HASH_FOR += $(FONTS_DROID_SOURCE)

define FONTS_DROID_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/fonts/droid/
	install -m 0644 $(@D)/fonts-android-$(FONTS_DROID_VERSION)/NOTICE $(@D)/fonts-android-$(FONTS_DROID_VERSION)/DroidSansFallback.ttf \
	  $(TARGET_DIR)/usr/share/fonts/droid/
endef

$(eval $(generic-package))
