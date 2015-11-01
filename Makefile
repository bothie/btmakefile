package        = btmakefile

TOPDIR=.
THISDIR=.
MAKEFILE=Makefile

-include $(shell btmakefile --path)/Makefile.Include

error-message:
	@echo "There is nothing to do in this package"
	@false

all: error-message
$(ALL): error-message

install: print-install-note

print-install-note:
	@echo "Call »./install --help« for help on installing"

my-clean:
	rm -f configure.* *.d *.o test4sint_overflow.{c,elf} Makefile.{stderr,Include,System} configure-prev version.*
	rm -fr wrappers

ifndef CLEAN
clean: my-clean
endif

$(CLEAN): my-clean

Makefile.Include: Makefile.Include.in
	sed -f Makefile.Include.sed < Makefile.Include.in > Makefile.Include
