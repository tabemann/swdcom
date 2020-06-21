CSTD=c99
WARN=-Wall -Wextra -Wno-unknown-pragmas

CFLAGS?=-O2 -pipe
CFLAGS+=-std=$(CSTD)
CFLAGS+=$(WARN)
CFLAGS+=-I/usr/local/include
CFLAGS+=-I/usr/local/include/stlink
CFLAGS+=-I/usr/include/libusb-1.0
CFLAGS+=-L/usr/local/lib
LDFLAGS+=-lstlink

swd2: swd2.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

.PHONY: clean
clean:
	rm -f swd2
