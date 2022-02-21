PROG := $(shell basename "$$PWD")

MKDIR ?= mkdir -p --
RM := rm -rf --

CXX ?= g++
CXXFLAGS ?= -g -ggdb -O0 -Wall -Wextra -Wpedantic -std=gnu++20
LDFLAGS := #$(shell pkg-config --libs )

.PHONY: all run edit clean

all: $(PROG)

$(PROG): main.cxx main.hxx
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

run: $(PROG)
	./$(PROG)

edit:
	vis '+vsplit main.hxx' Makefile main.cxx

clean:
	$(RM) $(PROG)

$(V).SILENT:
