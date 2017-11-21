#
# Component Makefile (for esp-idf)
#
# This Makefile should, at the very least, just include $(SDK_PATH)/make/component.mk. By default, 
# this will take the sources in this directory, compile them and link them into 
# lib(subdirectory_name).a in the build directory. This behaviour is entirely configurable,
# please read the SDK documents if you need to do this.
#

ifdef CONFIG_SSD1306_ENABLED

COMPONENT_SRCDIRS := main
COMPONENT_ADD_INCLUDEDIRS := main
COMPONENT_ADD_LDFLAGS := -llibssd1306-esp-idf-i2c

COMPONENT_EXTRA_CLEAN :=

endif
