LATEXMK = latexmk -xelatex -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f

all: main list cover-letter

ifdef EXTENDED
MAIN_FLAGS = -usepretex='\def\extendedcv{}'
else ifdef MINIMAL
MAIN_FLAGS = -usepretex='\def\minimalcv{}'
endif

main: main.tex
	$(LATEXMK) -g $(MAIN_FLAGS) main.tex

list: list.tex
	$(LATEXMK) list.tex

cover-letter: cover-letter.tex
	$(LATEXMK) cover-letter.tex

clean:
	latexmk -C
	rm -f out/*
