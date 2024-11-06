# MAIN = sheet3
MAIN = sheet1 sheet2 sheet3
LATEXMK=latexmk -pdflatex -shell-escape
.PHONY: mk

mk: 
	$(LATEXMK) $(MAIN).tex

clean:
	latexmk -c
	rm -f *.{log,bbl,nav,rev,snm,vrb,vtc,bak}
	
fix:
	rm main.aux

.PHONY: all clean
