#! /bin/make
SHELL:=/bin/bash

prefix:=$(shell echo ~/.local)


pre-commit: README.pod
	@podchecker ezid

README.pod: ezid
	@podselect $< > $@

install:
	@type podchecker;
	@type http;
	@type pod2text;
	@if [[ -d ${prefix}/bin ]]; then\
    echo "install ezid ${prefix}/bin"; \
    install ezid ${prefix}/bin; \
	else \
		echo "installation directory ${prefix}/bin not found"; \
		echo "Try setting prefix as in make prefix=/usr/local install"; \
		exit 1; \
	fi;
#	@if [[ "$${PATH}" =~ (^|:)"${prefix}/bin"(|/)(:|$$) ]]; then \
#	  echo "Installed to ${prefix}/bin/ezid"; \
#	else \
#	  echo "Installed, but ${prefix}/bin/ezid not in current PATH";\
#	fi;
