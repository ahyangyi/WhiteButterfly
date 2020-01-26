CC?=gcc
CFLAGS?=-O2 -march=native
LDFLAGS=-lm -lalleg

SOURCE=$(wildcard *.c)
OBJECTS=$(patsubst %.c,%.o,$(SOURCE))
DEPENDENCY=$(wildcard *.h) Makefile

all: butterfly

butterfly: $(OBJECTS)
	$(CC) $^ $(LDFLAGS) -o $@

%.o: %.c $(DEPENDENCY)
	$(CC) $< $(CFLAGS) -c -o $@
