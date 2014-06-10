# Simple LaTeX Makefile
#
# Author: steven velozo (steven@velozo.com)
#

RESUME=StevenVelozo-Resume
RESUMEEXTENDED=StevenVelozo-Resume-Extended

LATEX_COMPILER=pdflatex
#BIBTEX_COMPILER=bibtex

BUILD_RESUME=$(LATEX_COMPILER) $(RESUME).tex
BUILD_RESUME_EXTENDED=$(LATEX_COMPILER) $(RESUMEEXTENDED).tex

all: resume resume-extended

resume:
	$(BUILD_RESUME)
	$(BUILD_RESUME)

resume-extended:
	$(BUILD_RESUME)
	$(BUILD_RESUME_EXTENDED)

clean-all:
	rm -f *.log *.out *.bak *.aux *.toc *.idx *.bbl *.blg *.dvi *.ps *.eps *.pdf

clean:
	rm -f *.log *.out *.bak *.aux *.toc *.idx *.bbl *.blg