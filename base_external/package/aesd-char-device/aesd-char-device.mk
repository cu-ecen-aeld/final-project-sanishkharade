
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
AESD_CHAR_DEVICE_VERSION = 57cbbdad654168fbe1d621b0763c89e5dd355f5d
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
# Add github URL for Assignment 7
AESD_CHAR_DEVICE_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-sanishkharade.git
AESD_CHAR_DEVICE_SITE_METHOD = git
AESD_CHAR_DEVICE_GIT_SUBMODULES = YES


# / because its a folder
#LDD_MODULE_SUBDIRS = misc-modules/
AESD_CHAR_DEVICE_MODULE_SUBDIRS = aesd-char-driver/
AESD_CHAR_DEVICE_OVERRIDE_SRCDIR = /home/sanish/AESD/assignment-8-sanishkharade


#define AESD_ASSIGNMENTS_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
#endef
#$(INSTALL) -m 0755 $(@D)/test/drivertest.sh $(TARGET_DIR)/usr/bin
# TODO add module and scull load and unload utilities/scripts to the installation steps below
define AESD_CHAR_DEVICE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test/writes.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/drivertest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/assignment-test.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/sockettest.sh $(TARGET_DIR)/usr/bin
endef

# key line which builds the modules
$(eval $(kernel-module))
$(eval $(generic-package))
