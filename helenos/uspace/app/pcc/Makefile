#	$Id: Makefile.in,v 1.6 2008/07/18 14:00:38 gmcgarry Exp $
#
# Makefile.in for top-level of pcc.
#



CC=gcc
CFLAGS=-g -O2  -Wall -Wmissing-prototypes -Wstrict-prototypes -Wshadow -Wsign-compare
LDFLAGS=
CPPFLAGS=
YACC=bison -y
LEX=flex

SUBDIR=cc

all: ${SUBDIR}

install:
	cd cc && ${MAKE} install

clean:
	cd cc && ${MAKE} clean

distclean:
	cd cc && ${MAKE} distclean
	cd f77 && ${MAKE} distclean
	/bin/rm -rf Makefile config.log stamp-h1 config.status \
	configure.lineno config.h autom4te.cache

${SUBDIR}: nonexistant
	cd $@ && $(MAKE) all $(MFLAGS)

nonexistant:
