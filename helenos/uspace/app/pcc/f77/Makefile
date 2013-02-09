#	$Id: Makefile.in,v 1.3 2008/07/18 14:00:38 gmcgarry Exp $
#
# Makefile.in for top-level of pcc.
#


CC=gcc
CFLAGS=-g -O2  -Wall -Wmissing-prototypes -Wstrict-prototypes -Wshadow -Wsign-compare
LDFLAGS=
CPPFLAGS=
YACC=bison -y
LEX=flex

SUBDIR=f77 fcom

all: ${SUBDIR}

install:
	cd f77 && ${MAKE} install
	cd fcom && ${MAKE} install

clean:
	cd f77 && ${MAKE} clean
	cd fcom && ${MAKE} clean

distclean:
	cd f77 && ${MAKE} distclean
	cd fcom && ${MAKE} distclean
	/bin/rm -rf Makefile config.log stamp-h1 config.status \
	configure.lineno config.h autom4te.cache

${SUBDIR}: nonexistant
	cd $@; $(MAKE) all $(MFLAGS)

nonexistant:

