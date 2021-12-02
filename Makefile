
-include tub/main.mk

ifndef DMAKEFILE

all: doit

%:
	@git submodule update --init --recursive
	@$(MAKE) gitconfig
	@$(MAKE) $@

endif
