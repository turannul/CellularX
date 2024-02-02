include $(THEOS)/makefiles/common.mk

#TARGET = iphone:clang:12.2:10.00

#SYSROOT = $(THEOS)/sdks/iPhoneOS12.2.sdk

BUNDLE_NAME = CellularXS
$(BUNDLE_NAME)_FILES = CellularXsSettings.m 
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc
$(BUNDLE_NAME)_PRIVATE_FRAMEWORKS = Preferences

ARCHS = arm64 arm64e

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CellularXS.plist$(ECHO_END)