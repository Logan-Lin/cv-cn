LATEXMK = latexmk -xelatex -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f

all: main list teaching-portfolio cover-letter

ifdef EXTENDED
MAIN_FLAGS = -jobname=main-extended -usepretex='\def\extendedcv{}'
endif

main: main.tex
	$(LATEXMK) $(MAIN_FLAGS) main.tex

list: list.tex
	$(LATEXMK) list.tex

teaching-portfolio: teaching-portfolio.tex
	$(LATEXMK) teaching-portfolio.tex

cover-letter: cover-letter.tex
	$(LATEXMK) cover-letter.tex

clean:
	latexmk -C
	rm -f out/*
