MKDIR = mkdir -p --
NEXT ?= $(shell find . -type d -iname '[0-9][0-9][0-9]' -printf '%f\n' | sort -rn | awk '{printf "%03d", $$1 + 1; exit}')

PROBLEMS = $(shell find . -maxdepth 1 -type d -regex '.*[0-9]+')

.PHONY: all clean next

all:
	(for i in $(PROBLEMS); do (pushd "$$i"; $(MAKE)); done)

clean:
	(for i in $(PROBLEMS); do $(MAKE) -C $$i clean; done)

next:
	$(MKDIR) $(NEXT)
	cp skel/mk $(NEXT)/Makefile
	cp skel/cxx $(NEXT)/main.cxx
	cp skel/hxx $(NEXT)/main.hxx

$(V).SILENT:
