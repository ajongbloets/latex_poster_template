
# Basic Variables

BDIR=build
PROJECT=poster
SOURCE=$(PROJECT).tex

_PDF=$(PROJECT).pdf
PDF=$(patsubst %,$(BDIR)/%,$(_PDF))

_BBL=$(PROJECT).bbl
BBL=$(patsubst %,$(BDIR)/%,$(_BBL))

_BLG=$(PROJECT).blg
BLG=$(patsubst %,$(BDIR)/%,$(_BLG))

# Prevent unintentional match of targets to rules
.PHONY: poster bib all clean

poster:
	-pdflatex -shell-escape -interaction=nonstopmode -output-directory $(BDIR) $(SOURCE)

bib:
	biber --output-directory=$(BDIR) $(PROJECT)

all:
	pdflatex -shell-escape -interaction=nonstopmode -output-directory $(BDIR) $(SOURCE)
	biber --output-directory=$(BDIR) $(PROJECT)
	pdflatex -shell-escape -interaction=nonstopmode -output-directory $(BDIR) $(SOURCE)

clean:
	-rm -rf ./build/*

