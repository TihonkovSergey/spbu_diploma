.PHONY: clean

clean:
	rm -f *.log
	rm -f *.aux
	rm -f *.out
	rm -f *.toc
	rm -f *.pdf

main.tex: titlepage.tex

main.pdf: main.tex
	pdflatex main.tex

make_pdf: main.pdf

healthcheck:
	@which pdflatex || echo "pdflatex is not installed!" >&2

build: clean make_pdf