MAIN = postmark
SRCS = postmark-1.53.c 
CFLAGS = -O2 -g 
CFLAGS += -Wno-format -Wno-parentheses -Wno-deprecated-non-prototype -Wno-implicit-int -Wno-implicit-function-declaration

OBJS = $(SRCS:.c=.o)
CC = gcc

.PHONY: clean

all: $(MAIN) Makefile

$(MAIN): $(OBJS) 
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)

%.o: %.c %.h
	$(CC) $(CFLAGS) -c $<  -o $@

clean:
	$(RM) *.o *~ $(MAIN)
