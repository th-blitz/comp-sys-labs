# A makefile to generate assembly code from C source code.
CC = gcc
CFLAGS = -Wall -Og
ARCH := $(shell uname -m)

SRC := $(wildcard *.c)
ASM := $(SRC:.c=.$(ARCH).s)

all: $(ASM)

%.$(ARCH).s: %.c
	$(CC) $(CFLAGS) -S $< -o $@

clean:
	rm *.$(ARCH).s
