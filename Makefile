CROSS_COMPILE ?=

CC	:= $(CROSS_COMPILE)gcc
CFLAGS	?= -O2 -W -Wall -std=gnu99 -I/opt/vc/include/
LDFLAGS	?=
LIBS	:= -lrt -lvcos -L/opt/vc/lib

%.o : %.c
	$(CC) $(CFLAGS) -g -c -o $@ $<

all: m2m

m2m: m2m.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	-rm -f *.o
	-rm -f m2m
