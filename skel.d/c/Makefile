PROG := $(shell basename "$$PWD")

MKDIR ?= mkdir -p --
RM := rm -rf --

CC ?= gcc
CFLAGS ?= -g -ggdb -O0 -Wall -Wextra -Wpedantic -std=gnu18
LDFLAGS := #$(shell pkg-config --libs )

.PHONY: all run edit clean

all: $(PROG)

$(PROG): main.c main.h
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

run: $(PROG)
	./$(PROG)

edit:
	vis '+vsplit main.c' Makefile main.h

clean:
	$(RM) $(PROG)

$(V).SILENT:
