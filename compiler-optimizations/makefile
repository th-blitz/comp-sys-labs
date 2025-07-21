# A makefile to generate assembly code from C source code.
CC = gcc
CFLAGS = -Wall -g -Og
ARCH := $(shell uname -m)

SRC := $(wildcard *.c)
ASM := $(SRC:.c=.$(ARCH).s)
OBJ := $(SRC:.c=.$(ARCH).o)

all: compile run $(ASM) 

run: compile
	./main.out >> main.$(ARCH).output

compile: $(OBJ)
	$(CC) -o main.out $(OBJ)

%.$(ARCH).o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.$(ARCH).s: %.c
	$(CC) $(CFLAGS) -S $< -o $@

clean:
	rm *.$(ARCH).s *.$(ARCH).o *.out
