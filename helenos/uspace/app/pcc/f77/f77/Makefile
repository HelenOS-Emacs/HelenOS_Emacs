#	$Id: Makefile.in,v 1.8 2008/12/19 08:08:48 ragge Exp $
#
# Makefile.in for the f77 frontend of pcc.
#

top_srcdir=../..
top_builddir=../..
prefix = /usr/local
exec_prefix = ${prefix}
bindir = ${exec_prefix}/bin
libexecdir = ${exec_prefix}/libexec
includedir = ${prefix}/include
strip = yes
CC = gcc
TARGOS = linux
TARGMACH = i386
F77LIBDIR=-L${prefix}/lib
CFLAGS = -g -O2  -Wall -Wmissing-prototypes -Wstrict-prototypes -Wshadow -Wsign-compare  -DLIBEXECDIR=\"${libexecdir}\" -DINCLUDEDIR=\"${includedir}\"
CPPFLAGS =  -I${top_builddir} -I${top_srcdir}/os/${TARGOS} -I${MDIR} \
	-Dmach_${TARGMACH} -Dos_${TARGOS} -I${FCOMDIR} -DLANG_F77 \
	-DLIBDIR=\"${F77LIBDIR}\"
LIBS = 
LDFLAGS = 
INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
OBJS=f77.o
DEST=f77

MIPDIR=${top_srcdir}/mip
MDIR=${top_srcdir}/arch/$(TARGMACH)
FCOMDIR=${top_srcdir}/f77/fcom

all: ${DEST}

${DEST}: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o $@

.c.o:
	$(CC) $(DEFS) $(CPPFLAGS) $(CFLAGS) -c $<

install:
	${INSTALL_PROGRAM} ${DEST} ${bindir}
	@if [ ${strip} = yes ]; then		\
		strip ${bindir}/${DEST} ;	\
		echo strip ${bindir}/${DEST} ;	\
	fi

clean:
	/bin/rm -f  $(OBJS) ${DEST}

distclean: clean
	/bin/rm -f  Makefile
