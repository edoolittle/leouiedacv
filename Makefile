# Rules for compiling the PDF from the LaTeX sources and displaying the output

# The main source file
TEX = $(wildcard *.tex)
# The PDF file
PDF = $(patsubst %.tex,%.pdf,$(TEX))

# Rules for building, opening, and cleaning the PDF output
all: $(PDF)

%.pdf: %.tex
	tectonic -X compile $< || pdflatex $<

show: $(PDF)
	open $<

add:
	@read -r -p "File(s) to add: " FTA ; \
	git add $$FTA

status:
	git status

push:
	git push

pull:
	git pull

commit:
	@read -r -p "Type commit message: " MSG ; \
	git commit -a -m "$$MSG"

clean:
	rm -f $(PDF)
