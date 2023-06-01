PREFIX    = /usr
BINDIR    = $(PREFIX)/bin
MANPREFIX = ${PREFIX}/share/man

AR     = ar
CC     = cc
RANLIB = ranlib
RM     = rm -f
YACC   = yacc

TLSLIB = -ltls
BIN += nc
MAN += usr.bin/nc/nc.1
ZLIB = -lz
LIBOBJ += lib/libc/gen/fts.o
CFLAGS += -DHAVE_LESS_T
