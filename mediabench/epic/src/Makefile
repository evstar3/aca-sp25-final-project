# --------------------------------------------------------------------- 
# ---		 EPIC (Efficient Pyramid Image Coder)               ---
# ---	 Designed by Eero P. Simoncelli and Edward H. Adelson       ---
# ---		    Written by Eero P. Simoncelli                   ---
# ---  Developed at the Vision Science Group, The Media Laboratory  ---
# ---	Copyright 1989, Massachusetts Institute of Technology       ---
# ---			 All rights reserved.                       ---
# ---------------------------------------------------------------------
#
# Permission to use, copy, or modify this software and its documentation
# for educational and research purposes only and without fee is hereby
# granted, provided that this copyright notice appear on all copies and
# supporting documentation.  For any other uses of this software, in
# original or modified form, including but not limited to distribution
# in whole or in part, specific prior permission must be obtained from
# M.I.T. and the authors.  These programs shall not be used, rewritten,
# or adapted as the basis of a commercial software or hardware product
# without first obtaining appropriate licenses from M.I.T.  M.I.T. makes
# no representations about the suitability of this software for any
# purpose.  It is provided "as is" without express or implied warranty.
#
# ---------------------------------------------------------------------

SHARED_OBJECTS = utilities.o parse_args.o fileio.o quantize.o \
	  run_length.o huffman.o 

EPIC_OBJECTS = epic.o  build_pyr.o

UNEPIC_OBJECTS = unepic.o collapse_pyr.o 

CONVOLVE_OBJECTS =  convolve.o edges.o 

#CC = ../../../bin/ssbig-na-sstrix-gcc # -mv8 -static 				BEN
CC = gcc

CFLAGS = -O2   ## For GCC
# CFLAGS = -O4 -fsingle  ## Optimize on Sun-4/SPARC
# CFLAGS = -O4 -f68881   ## Sun-3 with standard Floating point co-processor
# CFLAGS = -ffpa         ## Sun-3 with fpa (Weitek) board
# CFLAGS = +x            ## HP Bobcats
# CFLAGS = -O -f          ## DECstations

all: epic unepic 
	cp epic unepic ../bin/.

epic: $(EPIC_OBJECTS) $(SHARED_OBJECTS) $(CONVOLVE_OBJECTS)
	${CC} $(CFLAGS) -o epic $(EPIC_OBJECTS) $(SHARED_OBJECTS) $(CONVOLVE_OBJECTS) -lc -lm

unepic: $(UNEPIC_OBJECTS) $(SHARED_OBJECTS)
	${CC} $(CFLAGS) -o unepic $(UNEPIC_OBJECTS) $(SHARED_OBJECTS) -lc  			# -lm

$(CONVOLVE_OBJECTS): convolve.h
	${CC} $(CFLAGS) -c $*.c

$(EPIC_OBJECTS): epic.h
	${CC} $(CFLAGS) -c $*.c

$(UNEPIC_OBJECTS): epic.h
	${CC} $(CFLAGS) -c $*.c

$(SHARED_OBJECTS): epic.h
	${CC} $(CFLAGS) -c $*.c

clean:
	rm -f *.o ; rm -f *~ ; rm -f ../bin/* ; rm -f epic unepic
