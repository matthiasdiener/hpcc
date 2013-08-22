# -*- Makefile -*-

arch = Unix
include hpl/Make.$(arch)

all:
	- $(MKDIR) hpl/lib/$(arch)
	( $(CD) hpl/lib/arch/build ; $(MAKE) arch=$(arch) -f Makefile.hpcc )
	mv hpcc hpcc.x

clean:
	- $(MKDIR) hpl/lib/$(arch)
	( $(CD) hpl/lib/arch/build ; $(MAKE) arch=$(arch) -f Makefile.hpcc clean )
