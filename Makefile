# Rules for compiling the PDF from the LaTeX sources and displaying the output

# The main source file
TEX = $(wildcard *.tex)
# The PDF file
PDF = $(patsubst %.tex,%.pdf,$(TEX))

# Rules for building, opening, and cleaning the PDF output
all: $(PDF)

%.pdf: %.tex
	#pdflatex $<
	tectonic -X compile $<

show: $(PDF)
	open $<

push:
	git push

commit:
	git commit -a -m "automated commit"

clean:
	rm -f $(PDF)
