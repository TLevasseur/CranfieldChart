all : report.pdf

report.pdf :
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	rm -f *.aux *.cb *.cb2 *.log *.toc *.out *.lof *.bbl *.blg *.lot *.xml main-blx.bib

clean :
	rm -f *.aux *.cb *.cb2 *.log *.toc *.out *.pdf *.lof *.toc *.out *.lof *.bbl *.blg *.lot *.xml main-blx.bib
