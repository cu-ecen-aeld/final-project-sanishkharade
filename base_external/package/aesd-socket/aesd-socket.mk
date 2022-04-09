
##############################################################
#
# AESD-SOCKET
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_SOCKET_VERSION = 14cb5e63f995c41522949602b8aa9aaca35d86e1
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_SOCKET_SITE = git@github.com:cu-ecen-aeld/final-project-kamini2801.git
AESD_SOCKET_SITE_METHOD = git
AESD_SOCKET_GIT_SUBMODULES = YES


AESD_SOCKET_MODULE_SUBDIRS = socket_server/
AESD_SOCKET_OVERRIDE_SRCDIR = /home/sanish/AESD/final-project/final-project-kamini2801/socket_application

define AESD_SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket_server/socket_server $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
