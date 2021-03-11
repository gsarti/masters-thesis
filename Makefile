.PHONY: clean clean-knits

pdf:
	Rscript -e 'options(bookdown.render.file_scope = FALSE); bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'
	Rscript -e 'browseURL("docs/_main.pdf")'
	rm -f *.log *.mtc* *.maf *.aux *.bbl *.blg *.xml

gitbook:
	Rscript -e 'options(bookdown.render.file_scope = FALSE); bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")'
	Rscript -e 'browseURL("docs/introduction.html")'
	rm -f *.log *.mtc* *.maf *.aux *.bbl *.blg *.xml

word:
	Rscript -e 'options(bookdown.render.file_scope = FALSE); bookdown::render_book("index.Rmd", output_format = "bookdown::word_document2")'
	Rscript -e 'browseURL("docs/_main.docx")'
	rm -f *.log *.mtc* *.maf *.aux *.bbl *.blg *.xml

clean:
	rm -f *.log *.mtc* *.maf *.aux *.bbl *.blg *.xml
	
clean-knits: clean
	rm -f *.docx *.html *.pdf *.tex *.toc *.out *.lof *.lot *.bcf
	rm -R *_files
	rm -R *_cache

