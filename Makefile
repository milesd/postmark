TGTS = postmark postmark.1

CFLAGS = -O2 -g 
CFLAGS += -Wno-format -Wno-parentheses -Wno-deprecated-non-prototype  -Wno-implicit-function-declaration
CC = gcc

.PHONY: clean

all: $(TGTS)

%.1: %.md
	go-md2man -in $< -out $@
	
test: postmark tmp/ 
	@{ echo set location tmp/; echo run; } | ./postmark postmark.conf

tmp/:
	mkdir -p tmp/

clean:
	$(RM) -r tmp/
	$(RM) *.o *~ $(TGTS) 
