export ARCHS = arm64 arm64e
export TARGET = iphone:clang:14.8:12.0
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.1.sdk

TWEAK_NAME = CellularXS
$(TWEAK_NAME)_OBJCC_FILES = CellularXs.xm
$(TWEAK_NAME)_CFLAGS = -F $(SYSROOT)/System/Library/CoreServices -fobjc-arc
$(TWEAK_NAME)_FRAMEWORKS = Foundation UIKit
$(TWEAK_NAME)_PRIVATE_FRAMEWORKS = Foundation

SUBPROJECTS += CellularXSSettings

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/bundle.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
