CC=gcc
CFLAGS=-O2 -march=native
LDFLAGS=-lm -lalleg

SOURCE=$(wildcard *.c)
DEPENDENCY=$(wildcard *.h) Makefile

all: butterfly

butterfly: $(SOURCE) $(DEPENDENCY)
	$(CC) $(SOURCE) $(CFLAGS) $(LDFLAGS) -o butterfly
