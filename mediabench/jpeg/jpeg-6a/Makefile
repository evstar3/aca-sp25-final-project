# Generated automatically from makefile.cfg by configure.
# Makefile for Independent JPEG Group's software

# makefile.cfg is edited by configure to produce a custom Makefile.

# Read installation instructions before saying "make" !!

# For compiling with source and object files in different directories.
srcdir = .

# Where to install the programs and man pages.
prefix = /usr/local
exec_prefix = ${prefix}
bindir = $(exec_prefix)/bin
libdir = $(exec_prefix)/lib
includedir = $(prefix)/include
binprefix =
manprefix =
manext = 1
mandir = $(prefix)/man/man$(manext)

# The name of your C compiler:
CC= gcc #/export/ramoth4/bishop/simplescalar/bin/ssbig-na-sstrix-gcc

# You may need to adjust these cc options:
CFLAGS= -O  -I$(srcdir)
# Generally, we recommend defining any configuration symbols in jconfig.h,
# NOT via -D switches here.
# However, any special defines for ansi2knr.c may be included here:
ANSI2KNRFLAGS= 

# Link-time cc options:
LDFLAGS= 

# To link any special libraries, add the necessary -l commands here.
LDLIBS= 

# Put here the object file name for the correct system-dependent memory
# manager file.  For Unix this is usually jmemnobs.o, but you may want
# to use jmemansi.o or jmemname.o if you have limited swap space.
SYSDEPMEM= jmemnobs.o

# miscellaneous OS-dependent stuff
SHELL= /bin/sh
# linker
LN= $(CC)
# file deletion command
RM= rm -f
# file rename command
MV= mv
# library (.a) file creation command
AR= ar rc#/export/ramoth4/bishop/simplescalar/bin/ssbig-na-sstrix-ar rc
# second step in .a creation (use "touch" if not needed)
AR2= touch#/export/ramoth4/bishop/simplescalar/bin/ssbig-na-sstrix-ranlib
# installation program
INSTALL= cp
INSTALL_PROGRAM= ${INSTALL}
INSTALL_DATA= ${INSTALL}

# End of configurable options.


# source files: JPEG library proper
LIBSOURCES= jcapimin.c jcapistd.c jccoefct.c jccolor.c jcdctmgr.c jchuff.c \
        jcinit.c jcmainct.c jcmarker.c jcmaster.c jcomapi.c jcparam.c \
        jcphuff.c jcprepct.c jcsample.c jctrans.c jdapimin.c jdapistd.c \
        jdatadst.c jdatasrc.c jdcoefct.c jdcolor.c jddctmgr.c jdhuff.c \
        jdinput.c jdmainct.c jdmarker.c jdmaster.c jdmerge.c jdphuff.c \
        jdpostct.c jdsample.c jdtrans.c jerror.c jfdctflt.c jfdctfst.c \
        jfdctint.c jidctflt.c jidctfst.c jidctint.c jidctred.c jquant1.c \
        jquant2.c jutils.c jmemmgr.c
# memmgr back ends: compile only one of these into a working library
SYSDEPSOURCES= jmemansi.c jmemname.c jmemnobs.c jmemdos.c jmemmac.c
# source files: cjpeg/djpeg/jpegtran applications, also rdjpgcom/wrjpgcom
APPSOURCES= cjpeg.c djpeg.c jpegtran.c cdjpeg.c rdcolmap.c rdswitch.c \
        rdjpgcom.c wrjpgcom.c rdppm.c wrppm.c rdgif.c wrgif.c rdtarga.c \
        wrtarga.c rdbmp.c wrbmp.c rdrle.c wrrle.c
SOURCES= $(LIBSOURCES) $(SYSDEPSOURCES) $(APPSOURCES)
# files included by source files
INCLUDES= jchuff.h jdhuff.h jdct.h jerror.h jinclude.h jmemsys.h jmorecfg.h \
        jpegint.h jpeglib.h jversion.h cdjpeg.h cderror.h
# documentation, test, and support files
DOCS= README install.doc usage.doc cjpeg.1 djpeg.1 jpegtran.1 rdjpgcom.1 \
        wrjpgcom.1 wizard.doc example.c libjpeg.doc structure.doc \
        coderules.doc filelist.doc change.log
MKFILES= configure makefile.cfg makefile.ansi makefile.unix makefile.bcc \
        makefile.mc6 makefile.dj makefile.wat makcjpeg.st makdjpeg.st \
        makljpeg.st maktjpeg.st makefile.manx makefile.sas makefile.mms \
        makefile.vms makvms.opt
CONFIGFILES= jconfig.cfg jconfig.manx jconfig.sas jconfig.st jconfig.bcc \
        jconfig.mc6 jconfig.dj jconfig.wat jconfig.vms
OTHERFILES= jconfig.doc ckconfig.c ansi2knr.c ansi2knr.1 jmemdosa.asm
TESTFILES= testorig.jpg testimg.ppm testimg.gif testimg.jpg testprog.jpg \
        testimgp.jpg
DISTFILES= $(DOCS) $(MKFILES) $(CONFIGFILES) $(SOURCES) $(INCLUDES) \
        $(OTHERFILES) $(TESTFILES)
# library object files common to compression and decompression
COMOBJECTS= jcomapi.o jutils.o jerror.o jmemmgr.o $(SYSDEPMEM)
# compression library object files
CLIBOBJECTS= jcapimin.o jcapistd.o jctrans.o jcparam.o jdatadst.o jcinit.o \
        jcmaster.o jcmarker.o jcmainct.o jcprepct.o jccoefct.o jccolor.o \
        jcsample.o jchuff.o jcphuff.o jcdctmgr.o jfdctfst.o jfdctflt.o \
        jfdctint.o
# decompression library object files
DLIBOBJECTS= jdapimin.o jdapistd.o jdtrans.o jdatasrc.o jdmaster.o \
        jdinput.o jdmarker.o jdhuff.o jdphuff.o jdmainct.o jdcoefct.o \
        jdpostct.o jddctmgr.o jidctfst.o jidctflt.o jidctint.o jidctred.o \
        jdsample.o jdcolor.o jquant1.o jquant2.o jdmerge.o
# These objectfiles are included in libjpeg.a
LIBOBJECTS= $(CLIBOBJECTS) $(DLIBOBJECTS) $(COMOBJECTS)
# object files for sample applications (excluding library files)
COBJECTS= cjpeg.o rdppm.o rdgif.o rdtarga.o rdrle.o rdbmp.o rdswitch.o \
        cdjpeg.o
DOBJECTS= djpeg.o wrppm.o wrgif.o wrtarga.o wrrle.o wrbmp.o rdcolmap.o \
        cdjpeg.o
TROBJECTS= jpegtran.o rdswitch.o cdjpeg.o


all:  libjpeg.a cjpeg djpeg jpegtran rdjpgcom wrjpgcom

# This rule causes ansi2knr to be invoked.
# .c.o:
# 	./ansi2knr $(srcdir)/$*.c T$*.c
# 	$(CC) $(CFLAGS) -c T$*.c
# 	$(RM) T$*.c $*.o
# 	$(MV) T$*.o $*.o

ansi2knr: ansi2knr.c
	$(CC) $(CFLAGS) $(ANSI2KNRFLAGS) -o ansi2knr ansi2knr.c

libjpeg.a:  $(LIBOBJECTS)
	$(RM) libjpeg.a
	$(AR) libjpeg.a  $(LIBOBJECTS)
	$(AR2) libjpeg.a

cjpeg: $(COBJECTS) libjpeg.a
	$(LN) $(LDFLAGS) -o cjpeg $(COBJECTS) libjpeg.a $(LDLIBS)

djpeg: $(DOBJECTS) libjpeg.a
	$(LN) $(LDFLAGS) -o djpeg $(DOBJECTS) libjpeg.a $(LDLIBS)

jpegtran: $(TROBJECTS) libjpeg.a
	$(LN) $(LDFLAGS) -o jpegtran $(TROBJECTS) libjpeg.a $(LDLIBS)

rdjpgcom: rdjpgcom.o
	$(LN) $(LDFLAGS) -o rdjpgcom rdjpgcom.o $(LDLIBS)

wrjpgcom: wrjpgcom.o
	$(LN) $(LDFLAGS) -o wrjpgcom wrjpgcom.o $(LDLIBS)

jconfig.h: jconfig.doc
	echo You must prepare a system-dependent jconfig.h file.
	echo Please read the installation directions in install.doc.
	exit 1

install: cjpeg djpeg jpegtran rdjpgcom wrjpgcom
	$(INSTALL_PROGRAM) cjpeg $(bindir)/$(binprefix)cjpeg
	$(INSTALL_PROGRAM) djpeg $(bindir)/$(binprefix)djpeg
	$(INSTALL_PROGRAM) jpegtran $(bindir)/$(binprefix)jpegtran
	$(INSTALL_PROGRAM) rdjpgcom $(bindir)/$(binprefix)rdjpgcom
	$(INSTALL_PROGRAM) wrjpgcom $(bindir)/$(binprefix)wrjpgcom
	$(INSTALL_DATA) $(srcdir)/cjpeg.1 $(mandir)/$(manprefix)cjpeg.$(manext)
	$(INSTALL_DATA) $(srcdir)/djpeg.1 $(mandir)/$(manprefix)djpeg.$(manext)
	$(INSTALL_DATA) $(srcdir)/jpegtran.1 $(mandir)/$(manprefix)jpegtran.$(manext)
	$(INSTALL_DATA) $(srcdir)/rdjpgcom.1 $(mandir)/$(manprefix)rdjpgcom.$(manext)
	$(INSTALL_DATA) $(srcdir)/wrjpgcom.1 $(mandir)/$(manprefix)wrjpgcom.$(manext)

install-lib: libjpeg.a install-headers
	$(INSTALL_DATA) libjpeg.a $(libdir)/$(binprefix)libjpeg.a

install-headers: jconfig.h
	$(INSTALL_DATA) jconfig.h $(includedir)/jconfig.h
	$(INSTALL_DATA) $(srcdir)/jpeglib.h $(includedir)/jpeglib.h
	$(INSTALL_DATA) $(srcdir)/jmorecfg.h $(includedir)/jmorecfg.h
	$(INSTALL_DATA) $(srcdir)/jerror.h $(includedir)/jerror.h

clean:
	$(RM) *.o cjpeg djpeg jpegtran libjpeg.a rdjpgcom wrjpgcom
	$(RM) ansi2knr core testout* config.log config.status

distribute:
	$(RM) jpegsrc.tar*
	tar cvf jpegsrc.tar $(DISTFILES)
	compress -v jpegsrc.tar

test: cjpeg djpeg jpegtran
	$(RM) testout*
	./djpeg -dct int -ppm -outfile testout.ppm  $(srcdir)/testorig.jpg
	./djpeg -dct int -gif -outfile testout.gif  $(srcdir)/testorig.jpg
	./cjpeg -dct int -outfile testout.jpg  $(srcdir)/testimg.ppm
	./djpeg -dct int -ppm -outfile testoutp.ppm $(srcdir)/testprog.jpg
	./cjpeg -dct int -progressive -opt -outfile testoutp.jpg $(srcdir)/testimg.ppm
	./jpegtran -outfile testoutt.jpg $(srcdir)/testprog.jpg
	cmp $(srcdir)/testimg.ppm testout.ppm
	cmp $(srcdir)/testimg.gif testout.gif
	cmp $(srcdir)/testimg.jpg testout.jpg
	cmp $(srcdir)/testimg.ppm testoutp.ppm
	cmp $(srcdir)/testimgp.jpg testoutp.jpg
	cmp $(srcdir)/testorig.jpg testoutt.jpg

check: test

# GNU Make likes to know which target names are not really files to be made:
.PHONY: all install install-lib install-headers clean distribute test check


jcapimin.o: jcapimin.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcapistd.o: jcapistd.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jccoefct.o: jccoefct.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jccolor.o: jccolor.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcdctmgr.o: jcdctmgr.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jchuff.o: jchuff.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jchuff.h
jcinit.o: jcinit.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcmainct.o: jcmainct.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcmarker.o: jcmarker.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcmaster.o: jcmaster.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcomapi.o: jcomapi.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcparam.o: jcparam.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcphuff.o: jcphuff.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jchuff.h
jcprepct.o: jcprepct.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jcsample.o: jcsample.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jctrans.o: jctrans.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdapimin.o: jdapimin.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdapistd.o: jdapistd.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdatadst.o: jdatadst.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h
jdatasrc.o: jdatasrc.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h
jdcoefct.o: jdcoefct.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdcolor.o: jdcolor.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jddctmgr.o: jddctmgr.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jdhuff.o: jdhuff.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdhuff.h
jdinput.o: jdinput.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdmainct.o: jdmainct.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdmarker.o: jdmarker.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdmaster.o: jdmaster.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdmerge.o: jdmerge.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdphuff.o: jdphuff.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdhuff.h
jdpostct.o: jdpostct.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdsample.o: jdsample.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jdtrans.o: jdtrans.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jerror.o: jerror.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jversion.h jerror.h
jfdctflt.o: jfdctflt.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jfdctfst.o: jfdctfst.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jfdctint.o: jfdctint.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jidctflt.o: jidctflt.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jidctfst.o: jidctfst.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jidctint.o: jidctint.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jidctred.o: jidctred.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jdct.h
jquant1.o: jquant1.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jquant2.o: jquant2.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jutils.o: jutils.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h
jmemmgr.o: jmemmgr.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jmemsys.h
jmemansi.o: jmemansi.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jmemsys.h
jmemname.o: jmemname.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jmemsys.h
jmemnobs.o: jmemnobs.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jmemsys.h
jmemdos.o: jmemdos.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jmemsys.h
jmemmac.o: jmemmac.c jinclude.h jconfig.h jpeglib.h jmorecfg.h jpegint.h jerror.h jmemsys.h
cjpeg.o: cjpeg.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h jversion.h
djpeg.o: djpeg.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h jversion.h
jpegtran.o: jpegtran.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h jversion.h
cdjpeg.o: cdjpeg.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
rdcolmap.o: rdcolmap.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
rdswitch.o: rdswitch.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
rdjpgcom.o: rdjpgcom.c jinclude.h jconfig.h
wrjpgcom.o: wrjpgcom.c jinclude.h jconfig.h
rdppm.o: rdppm.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
wrppm.o: wrppm.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
rdgif.o: rdgif.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
wrgif.o: wrgif.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
rdtarga.o: rdtarga.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
wrtarga.o: wrtarga.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
rdbmp.o: rdbmp.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
wrbmp.o: wrbmp.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
rdrle.o: rdrle.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
wrrle.o: wrrle.c cdjpeg.h jinclude.h jconfig.h jpeglib.h jmorecfg.h jerror.h cderror.h
