ifeq ($(OS),Windows_NT)
	SHELL=%WINDIR%/cmd.exe
else
	SHELL=/usr/bin/env sh
endif
PDFLATEX = pdflatex
DIPLOMA_REPORT_PDF = main
REVIEW_PDF = review
TITLE_PDF = title
BIBTEX = bibtex
RM = rm -f
GREP = grep

all: $(DIPLOMA_REPORT_PDF).pdf $(REVIEW_PDF).pdf

fast: *.tex
	latexmk -pdf -pdflatex="pdflatex" $(DIPLOMA_REPORT_PDF)
	mv $(DIPLOMA_REPORT_PDF).pdf $(DIPLOMA_REPORT_PDF)-`date +'%m-%d-%H-%M-%S'`.pdf

fastcheck: *.tex
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	$(BIBTEX) $(DIPLOMA_REPORT_PDF).aux
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	mv $(DIPLOMA_REPORT_PDF).pdf $(DIPLOMA_REPORT_PDF)-`date +'%m-%d-%H-%M-%S'`.pdf

$(DIPLOMA_REPORT_PDF).pdf: *.tex
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	$(BIBTEX) $(DIPLOMA_REPORT_PDF).aux
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)


$(REVIEW_PDF).pdf: *.tex
	$(PDFLATEX) $(REVIEW_PDF)

cleanall: clean
	$(RM)  *.pdf

.PHONY: clean
clean:
	$(RM) *.aux *.log *.out *.toc *.gz *.gz\(busy\) *.blg *.bbl $(DIPLOMA_REPORT_PDF).pdf $(TASK_PDF).pdf $(TITLE_PDF).pdf $(PRACTICE_REPORT_PDF).pdf $(COURSE_REPORT_PDF).pdf $(REVIEW_PDF).pdf
