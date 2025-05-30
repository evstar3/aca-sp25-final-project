# Generated automatically from Makefile.in by configure.
# $Header: /u/drspeech/src/rasta/RCS/Makefile.in,v 1.6 1997/01/31 20:08:23 davidj Exp $
#
# Generated automatically from Makefile.in by configure.
#
# Makefile.in for RASTA - a speech recognition feature extraction program.


# Standard things we need

.SUFFIXES: 
.SUFFIXES: .c .o

SHELL=/bin/sh


# Installation stuff.

prefix = /export/ramoth4/bishop/simplescalar/mediabench/rasta
exec_prefix = ${prefix}
libdir = $(exec_prefix)/lib
bindir = $(exec_prefix)/bin
includedir = $(exec_prefix)/include
mandir = $(prefix)/man
man1dir = $(mandir)/man1
docdir = $(prefix)/doc
srcdir = .
top_srcdir = .
transform = s,x,x,

# Programs we use.

CC = gcc
LD = $(CC)
INSTALL = ./install-sh -c
INSTALL_PROG = $(INSTALL)
INSTALL_DATA = ${INSTALL} -m 644

# Tool arguments.

CFLAGS = -g -O -static
LDFLAGS = -Lsphere2/nist/lib
LIBS =  -lsp -lutil

cflags = -I. -Isphere/include -I$(srcdir) $(CFLAGS)  -I$(prefix)/include 
ldflags = $(LDFLAGS)
libs = -L$(exec_prefix)/lib -Lsphere $(LIBS)
compile.c = $(CC) $(cflags)

################################################################
# Implicit rules
################################################################

.c.o:
	$(compile.c) -c $<


################################################################
# The default target
################################################################

default: all


################################################################
# Variables we accumulate into.
################################################################

all_srcs =
all_objs =
all_hdrs =
all_progs =
all_docs =
all_man1pages =
garbage =
distgarbage =
rcs_files =

######################################################################
# The rasta program itself.
######################################################################

rasta_srcs = 	rasta.c init.c anal.c powspec.c noise_est.c mapping.c \
		audspec.c nl_audspec.c rasta_filt.c inverse_nl.c \
		post_audspec.c \
		lpccep.c fft.c io.c fvecsubs.c svecsubs.c debug.c

rasta_hdrs =  	functions.h rasta.h

rasta_objs =	rasta.o init.o anal.o powspec.o noise_est.o mapping.o \
		audspec.o nl_audspec.o rasta_filt.o inverse_nl.o \
		post_audspec.o \
		lpccep.o fft.o io.o fvecsubs.o svecsubs.o debug.o


rasta.o: rasta.c functions.h rasta.h config.h Makefile
	$(compile.c) -c $(srcdir)/rasta.c

init.o: init.c functions.h rasta.h config.h Makefile
	$(compile.c) -c   $(srcdir)/init.c

debug.o: debug.c functions.h rasta.h config.h Makefile
	$(compile.c) -c   $(srcdir)/debug.c

io.o: io.c functions.h rasta.h config.h Makefile
	$(compile.c) -c   $(srcdir)/io.c

anal.o: anal.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/anal.c

powspec.o: powspec.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/powspec.c

audspec.o: audspec.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/audspec.c

noise_est.o: noise_est.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/noise_est.c

mapping.o: mapping.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/mapping.c	

nl_audspec.o: nl_audspec.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/nl_audspec.c

rasta_filt.o: rasta_filt.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/rasta_filt.c

inverse_nl.o: inverse_nl.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/inverse_nl.c

post_audspec.o: post_audspec.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/post_audspec.c

lpccep.o: lpccep.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/lpccep.c

fft.o: fft.c functions.h rasta.h config.h Makefile
	$(compile.c) -c  $(srcdir)/fft.c

fvecsubs.o: fvecsubs.c functions.h config.h rasta.h Makefile
	$(compile.c) -c  $(srcdir)/fvecsubs.c

svecsubs.o: svecsubs.c functions.h config.h rasta.h Makefile
	$(compile.c) -c  $(srcdir)/svecsubs.c

rasta: $(rasta_objs) Makefile
	$(LD) $(LDFLAGS) $(rasta_objs) -o $@ $(LIBS) -lc


all_srcs += $(rasta_srcs)
all_objs += $(rasta_objs)
all_hdrs += $(rasta_hdrs)
all_progs += rasta
all_man1pages += rasta.1

#################################################################
## The lsqsolve utility
#################################################################

lsq_srcs = lsqsolve.c mul_mdmd_md.c

lsq_objs = lsqsolve.o mul_mdmd_md.o

lsqsolve.o: lsqsolve.c Makefile
	$(compile.c) -c $(srcdir)/lsqsolve.c

mul_mdmd_md.o: mul_mdmd_md.c Makefile
	$(compile.c) -c $(srcdir)/mul_mdmd_md.c

lsqsolve: $(lsq_objs) Makefile
	$(LD) $(LDFLAGS) $(lsq_objs) -o $@ $(LIBS) -lc

all_srcs += $(lsq_srcs)
all_objs += $(lsq_objs)
all_progs += lsqsolve
all_man1pages += lsqsolve.1

#################################################################
## The create_mapping script
#################################################################

all_script_srcs += create_mapping.in

all_scripts += create_mapping

#################################################################
## Config. and doc files.
#################################################################

all_docs += INSTALL README NEWS TODO $(all_man1pages)

config_srcs = \
	configure.in \
	acconfig.h \
	Makefile.in \
	install-sh \
	config.guess \
	config.sub 
config_outfiles = \
	configure \
	config.h.in

distgarbage += config.cache config.log config.status

#################################################################
## Installation.
#################################################################

install: Makefile $(all_progs) $(all_scripts) $(all_man1pages)
	for i in $(all_progs) $(all_scripts); do \
		$(INSTALL_PROG) $$i $(bindir)/`echo $$i|sed '$(transform)'`; \
	done
	for i in $(all_man1pages); do \
		$(INSTALL_DATA) $(srcdir)/$$i \
			$(man1dir)/`echo $$i|sed '$(transform)'`; \
	done


#################################################################
## Misc useful targets.
#################################################################

garbage += $(all_objs) $(all_progs)
garbage += *.o a.out core
distgarbage += $(srcdir)/TAGS Makefile config.h

all: $(all_progs)

objs: $(all_objs)

progs: $(all_progs)

tags: TAGS

$(srcdir)/TAGS:	$(all_srcs) $(all_hdrs) Makefile
	cd $(srcdir) && etags --output=TAGS $(all_srcs) $(all_hdrs)

clean:
	rm -f $(garbage)

distclean: 
	rm -f $(garbage) $(distgarbage)

#################################################################
## Package distribution.
#################################################################

dist_files = $(all_srcs) $(all_hdrs) $(all_docs) \
	$(config_srcs) $(config_outfiles) \
	$(all_script_srcs)

# The name of the distribution
distname = rasta-$(VERSION)

# The file name of the compressed tar file
distfile = $(distname).tar.gz

# What we do to check it is okay to do a distribution
# DISTCHECK = ensure-ci

# The directory in which the distribution is built
distdir = $$r/$(distname)

# Build a distribution
dist: $(distfile)

# Build the file that contains the distribution
$(distfile): disttree
	rm -f $(distfile); \
	tar cvf - $(distname) | gzip >$(distfile)

# Build a directory tree that can be tared and gzipped to form the distribution
disttree: Makefile $(DISTCHECK) $(dist_files)
	r=`pwd`; export r; \
	rm -fr $(distdir); \
	mkdir $(distdir); \
	chmod a=rwx $(distdir); \
	for i in $(dist_files); do \
		file=`basename $$i`; \
		cp -p $(srcdir)/$$i $(distdir)/$$file || exit 1; \
	done

#################################################################
## Version and revision control.
#################################################################

rcs_files += $(all_srcs) $(all_hdrs) $(all_docs) $(config_srcs) \
	$(all_script_srcs)


# Ensure all files are checked in.
ensure-ci: Makefile
	@cd $(srcdir) && \
	if [ `rlog -L -l -R $(rcs_files) | wc -w` -ne 0 ]; \
        then \
                echo "ERROR: The following files are not checked in:"; \
                rlog -L -l -R $(rcs_files); \
                exit 1; \
        fi

# Execute an RCS command on all files.

RCSCMD =  rlog

rcs: Makefile
	@cd $(srcdir) && \
	$(RCSCMD) $(rcs_files)

# Version stamp.

VERSION = unknown
VERSIONCHECK = ensure-ci

version: $(VERSIONCHECK)
	@cd $(srcdir) && \
	rcs "-n$(VERSION):" $(rcs_files)



