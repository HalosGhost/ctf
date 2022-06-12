PROG := $(shell basename "$$PWD")

FROM := $(shell printf '%s\n' "$(PROG)" | awk '{l=length($$1); printf "%0*d", l, $$1 - 1; exit}')

MKDIR ?= mkdir -p --
RM := rm -rf --

CC ?= gcc
CFLAGS ?= -g -ggdb -O0 -Wall -Wextra -Wpedantic -std=gnu18
LDFLAGS := #$(shell pkg-config --libs )

.PHONY: all run edit clean import

all: $(PROG)

$(PROG): main.c main.h
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

run: $(PROG)
	./$(PROG)

edit:
	vis '+vsplit main.c' Makefile main.h

clean:
	$(RM) $(PROG)

import:
	$(RM) ./*
	for i in ../$(FROM)/*; do cp "$$i" .; done

$(V).SILENT:
