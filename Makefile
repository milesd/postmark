TGTS = postmark postmark.1

CFLAGS = -O2 -g 
CFLAGS += -Wno-format -Wno-parentheses -Wno-deprecated-non-prototype  -Wno-implicit-function-declaration
CC = gcc

.PHONY: clean

all: $(TGTS)

%.1: %.md
	go-md2man -in $< -out $@

clean:
	$(RM) *.o *~ $(TGTS)
