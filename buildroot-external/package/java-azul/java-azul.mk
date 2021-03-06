#############################################################
#
# Azul java runtime
#
#############################################################
JAVA_AZUL_VERSION = 1.8.0_91
JAVA_AZUL_SOURCE=ezdk-$(JAVA_AZUL_VERSION)-8.14.0.6-linux_aarch32.tar.gz
JAVA_AZUL_SITE = http://cdn.azul.com/zulu-embedded/bin

define JAVA_AZUL_PRE_PATCH
	cp $(JAVA_AZUL_PKGDIR)/Makefile $(@D)
endef

JAVA_AZUL_PRE_PATCH_HOOKS += JAVA_AZUL_PRE_PATCH

define JAVA_AZUL_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) install 
endef

$(eval $(generic-package))
