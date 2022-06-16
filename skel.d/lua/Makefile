PROG := $(shell basename "$$PWD")

FROM := $(shell printf '%s\n' "$(PROG)" | awk '{l=length($$1); printf "%0*d", l, $$1 - 1; exit}')

MKDIR ?= mkdir -p --
RM := rm -rf --

.PHONY: all run edit clean import

all: $(PROG)

$(PROG): main.lua lib.lua
	luac -o $@ $<

run: $(PROG)
	lua ./$(PROG)

edit:
	vis '+vsplit lib.lua' Makefile main.lua

clean:
	$(RM) $(PROG)

import:
	$(RM) ./*
	for i in ../$(FROM)/*; do cp "$$i" .; done

$(V).SILENT:
