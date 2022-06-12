PROG := $(shell basename "$$PWD")

FROM := $(shell printf '%s\n' "$(PROG)" | awk '{l=length($$1); printf "%0*d", l, $$1 - 1; exit}')

MKDIR ?= mkdir -p --
RM := rm -rf --

CXX ?= g++
CXXFLAGS ?= -g -ggdb -O0 -Wall -Wextra -Wpedantic -std=gnu++20
LDFLAGS := #$(shell pkg-config --libs )

.PHONY: all run edit clean import

all: $(PROG)

$(PROG): main.cxx main.hxx
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

run: $(PROG)
	./$(PROG)

edit:
	vis '+vsplit main.hxx' Makefile main.cxx

clean:
	$(RM) $(PROG)

import:
	$(RM) ./*
	for i in ../$(FROM)/*; do cp "$$i" .; done

$(V).SILENT:
