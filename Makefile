TGTS = postmark postmark.1

CFLAGS = -O2 -g 
CFLAGS += -Wno-format -Wno-parentheses -Wno-deprecated-non-prototype  -Wno-implicit-function-declaration
CC = gcc

.PHONY: clean

all: $(TGTS)

# Combine postmark.md with everything after the MANPAGE header in README.md
# assumes presence of go-md2man (i.e. brew install go-md2man)
%.1: %.md README.md
	@{ cat $< ; sed '1,/MANPAGE/d' < README.md;} | go-md2man -out $@

clean:
	$(RM) *.o *~ $(TGTS)
