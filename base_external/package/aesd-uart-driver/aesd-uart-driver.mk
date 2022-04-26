
##############################################################
#
# AESD_UART_DRIVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
AESD_UART_DRIVER_VERSION = 285426943e3c9dae9dbd81fce3b53d4357805118
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
# Add github URL for Assignment 7 
AESD_UART_DRIVER_SITE = git@github.com:cu-ecen-aeld/final-project-kamini2801.git
AESD_UART_DRIVER_SITE_METHOD = git
AESD_UART_DRIVER_GIT_SUBMODULES = YES


# / because its a folder
#LDD_MODULE_SUBDIRS = misc-modules/
AESD_UART_DRIVER_MODULE_SUBDIRS = aesd-uart-driver/
#AESD_UART_DRIVER_OVERRIDE_SRCDIR = /home/sanish/AESD/final-project/final-project-kamini2801


#define AESD_ASSIGNMENTS_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
#endef
#$(INSTALL) -m 0755 $(@D)/test/drivertest.sh $(TARGET_DIR)/usr/bin

# TODO add module and scull load and unload utilities/scripts to the installation steps below
define AESD_UART_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-uart-driver/aesduart_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-uart-driver/aesduart_unload $(TARGET_DIR)/usr/bin
endef

# key line which builds the modules
$(eval $(kernel-module))
$(eval $(generic-package))
