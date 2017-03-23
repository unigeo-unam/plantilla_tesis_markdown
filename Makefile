## Markdown extension (e.g. md, markdown, mdown).
BASEDIR=$(CURDIR)
CAPITULOS=$(BASEDIR)/capitulos
ESTILOSDIR=$(BASEDIR)/estilos
TESIS=tesis
## Localización de los archivo soportados por Pandoc
PREFIX = /Users/lramirez/.pandoc

## Localización del archivo de bibliografía
BIB=$(CAPITULOS)/bibliografia.bib

## CSL hojas de estilos para citas
CSL = $(ESTILOSDIR)/apa

help:
	@echo ' 																	  '
	@echo 'Makefile para la tesis con archivo Markdown                           '
	@echo '                                                                      '
	@echo 'Uso:                                                                  '
	@echo '   make html                        genera una version web            '
	@echo '   make pdf                         genera un archivo en PDF  			  '
	@echo '   make docx	                       genera un archivo en Docx 			  '
	@echo '   make epub	                       genera un archivo en ePub 			  '
	@echo '                                                                      '
	@echo ' 																	  '
	@echo ' 																	  '
	@echo 'trae las plantillas con: pandoc -D latex/html/etc	  				  '
	@echo 'o unas genericas desde:https://github.com/jgm/pandoc-templates		  '

pdf:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block --template plantilla_tesis.tex --filter pandoc-citeproc --csl "$(CSL)".csl -s -S --bibliography "$(BIB)" -o "$(TESIS)".pdf "$(CAPITULOS)"/*.md

docx:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --filter pandoc-citeproc --csl "$(CSL)".csl --bibliography "$(BIB)" --toc --number-sections -o "$(TESIS)".docx "$(CAPITULOS)"/*.md

epub:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block --epub-cover-image="$(ESTILOSDIR)"/portada.png -s -S --filter pandoc-citeproc --csl "$(CSL)".csl --bibliography "$(BIB)" --toc --number-sections --epub-stylesheet="$(ESTILOSDIR)"/epub.css --to epub3 -o "$(TESIS)".epub "$(CAPITULOS)"/*.md

html:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html -S --template="$(ESTILOSDIR)"/template.html --include-in-header="$(ESTILOSDIR)"/style.css --filter pandoc-citeproc --csl "$(CSL)".csl --bibliography="$(BIB)" --toc --number-sections -o "$(TESIS)".html "$(CAPITULOS)"/*.md


clean:
	rm -f *.html *.pdf *.docx *.epub
