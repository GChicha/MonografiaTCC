all: apresentacao

build/main.pdf: main.tex ../referencias.bib ../images/*
	mkdir -p build
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex
	bibtex build/main
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex

apresentacao: build/main.pdf

.PHONY: all apresentacao clean watch

clean:
	rm -rf build

watch:
	latexmk -pdf -outdir=build -pvc
