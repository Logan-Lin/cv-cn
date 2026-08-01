LATEXMK = latexmk -xelatex -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f

all: main-full main-short list research-plan teaching-portfolio cover-letter

main-full: main-full.tex
	$(LATEXMK) main-full.tex

main-short: main-short.tex
	$(LATEXMK) main-short.tex

list: list.tex
	$(LATEXMK) list.tex

research-plan: research-plan.tex
	$(LATEXMK) research-plan.tex

teaching-portfolio: teaching-portfolio.tex
	$(LATEXMK) teaching-portfolio.tex

cover-letter: cover-letter.tex
	$(LATEXMK) cover-letter.tex

clean:
	latexmk -C
	rm -f out/*
