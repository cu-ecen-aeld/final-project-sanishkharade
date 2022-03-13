
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = 5ca1f04a6e230a4510b656f736406dae8fce5dd5
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
# Add github URL for Assignment 7
LDD_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-sanishkharade.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES


# / because its a folder
#LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS = aesd-char-driver/
LDD_OVERRIDE_SRCDIR = /home/sanish/AESD/assignment-8-sanishkharade


#define AESD_ASSIGNMENTS_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
#endef

# TODO add module and scull load and unload utilities/scripts to the installation steps below
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test/drivertest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test/writes.sh $(TARGET_DIR)/usr/bin
endef

# key line which builds the modules
$(eval $(kernel-module))
$(eval $(generic-package))
