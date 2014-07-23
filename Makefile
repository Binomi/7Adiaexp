#-----------------------------------------------------------------
QUELL=main.cpp
PROG=main
CC=g++
CFLAGS=-Wall
#-----------------------------------------------------------------
OBJECTS=$(QUELL:.cpp=.o)
all: $(PROG)

$PROG: $(OBJECTS)
	$(CC) $(CFLAGS) $(QUELL) -o$@

%.o: %-cpp
	$(CC) $(CFLAGS) -c $< -o $@
	./main

Protokoll7.pdf: Protokoll7.tex
	pdflatex Protokoll7.tex
	bibtex Protokoll7
	pdflatex Protokoll7.tex
	pdflatex Protokoll7.tex

clean: 
	rm -f $(PROG) *.o
