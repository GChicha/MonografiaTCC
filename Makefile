all: monografia

build/main.pdf: main.tex referencias.bib images/*
	mkdir -p build
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex
	bibtex build/main
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex

monografia: build/main.pdf

.PHONY: all monografia clean

clean:
	rm -rf build
