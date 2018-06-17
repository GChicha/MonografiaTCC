pdf:
	mkdir -p build
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex
	bibtex build/main
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex
	pdflatex -file-line-error -halt-on-error -output-directory=build main.tex

clean:
	rm -rf build
