OUTPATH = bin
OUTFILEE = $(OUTPATH)/testecho_out

ECC=emcc
ECFLAGS = -s WASM=0

INCS =                                               \
            -Iinclude                                \
            -I.

OBJECTS =                                            \
            helloworld.bc                            \
            src/filterbank.o                         \
            src/mdf.o                                \
            src/preprocess.o                         \
            src/testecho.o                           \
            src/smallft.o


$(OUTFILE):$(OBJECTS) 
      @echo linking $(OUTFILE)
      @$(CC) $(OBJECTS) -lm -o $(OUTFILE)


$(OUTFILE):$(OBJECTS) 
	@echo linking $(OUTFILE)
	@$(CC) $(OBJECTS) -lm -o $(OUTFILE)

%.o:%.c
	@echo compiling $(CC) $(INCS) $(CFLAGS) -c $<   -o $@
	@$(CC) $(INCS) $(CFLAGS) -c $<   -o $@

clean:
	rm -f $(OBJECTS)
	rm -f $(OUTFILE) 


