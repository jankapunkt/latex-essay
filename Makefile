.PHONY: all clean

# Main target - compile the essay
all: essay.pdf

# Compile the essay with BibTeX
essay.pdf: essay.tex essay.cls references.bib
	pdflatex -interaction=nonstopmode essay.tex
	bibtex essay
	pdflatex -interaction=nonstopmode essay.tex
	pdflatex -interaction=nonstopmode essay.tex

# Clean up auxiliary files
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf
