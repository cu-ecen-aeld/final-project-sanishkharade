
##############################################################
#
# AESD-GPIO
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_GPIO_VERSION = 1fe005069dc121381df1d796d0827d7dd93f9c27
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_GPIO_SITE = git@github.com:cu-ecen-aeld/final-project-kamini2801.git
AESD_GPIO_SITE_METHOD = git
AESD_GPIO_GIT_SUBMODULES = YES


AESD_GPIO_MODULE_SUBDIRS = gpio_test/
AESD_GPIO_OVERRIDE_SRCDIR = /home/sanish/AESD/final-project/final-project-kamini2801/

define AESD_GPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gpio_test all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_GPIO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/gpio_test/gpio $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
