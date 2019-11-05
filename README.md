# Latex Poster Template

* Version: 2019-11-04
* Author: Joeri Jongbloets <j.a.jongbloets@uva.nl>

## Requirements

* LaTeX2e

### Latex Packages

* beamer
* beamerposter
* tcolorbox
* biblatex and biber (references)

Full list of packages can be found in `_packages.tex`

## Usage

You can use the MakeFile to automate the building process.

* to run pdflatex: `make poster`
* to run biber: `make bib` 
* remove build files: `make clean`
* run pdflatex, bib and pdflatex: `make all`

Note this will place all build files in the `build` folder.
 