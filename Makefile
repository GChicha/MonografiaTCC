pdf:
	mkdir -p build
	pdflatex -output-directory=build main.tex
	bibtex build/main
	pdflatex -output-directory=build main.tex
	pdflatex -output-directory=build main.tex

clean:
	rm -rf build
