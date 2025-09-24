MAIN = postmark
SRCS = postmark-1.53.c 
DOCS = postmark.html
CFLAGS = -O2 -g 
CFLAGS += -Wno-format -Wno-parentheses -Wno-deprecated-non-prototype -Wno-implicit-int -Wno-implicit-function-declaration

OBJS = $(SRCS:.c=.o)
CC = gcc

.PHONY: clean

all: $(MAIN) $(DOCS) Makefile

$(MAIN): $(OBJS) 
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)

%.o: %.c %.h
	$(CC) $(CFLAGS) -c $<  -o $@

%.html: %.1 
	groff -mandoc -Thtml $< > $@

%.txt: %.1 
	groff -mandoc -Tascii $< > $@

%.md: %.1 
# 	groff -mandoc -Tascii $< | ../man2md/man2md > $@
	man ./$< | ../man2md/man2md > $@



clean:
	$(RM) *.o *~ $(MAIN) $(DOCS)
