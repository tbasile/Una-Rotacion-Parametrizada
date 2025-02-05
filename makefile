main.pdf ::
cover_letter_plos.pdf ::
main_plos.pdf ::


main_plos.tex ::
	make -B main.pdf
	grep -v includegraphics main.tex > main_plos_tmp.tex
	latexpand -expand-bbl main.bbl main_plos_tmp.tex -o main_plos.tex
	rm main_plos_tmp.tex




main_gitdiff.pdf ::
	git checkout $(gitone)
# 	make articulo_plos_plantilla.pdf
	cp main.tex /tmp/v1.tex 
	git checkout main
	git checkout $(gittwo)
	cp main.tex /tmp/v2.tex 
	latexdiff /tmp/v1.tex /tmp/v2.tex > /tmp/v_diff.tex
	git checkout main
	make /tmp/v_diff.pdf
# 	pdflatex -draftmode /tmp/v_diff.tex
# 	bibtex cg_paper_gitdiff.aux
# 	pdflatex -draftmode cg_paper_gitdiff.tex
# 	pdflatex cg_paper_gitdiff.tex


main_gitdiff_master_and_plos_v1.pdf ::
	make main_gitdiff.pdf  gitone=PrimerEnvioPlos gittwo=main
	mv main_gitdiff.pdf main_gitdiff_master_and_plos_v1.pdf



-include ~/makefile
