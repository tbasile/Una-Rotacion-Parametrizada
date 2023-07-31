cover_letter_plos.pdf ::
main.pdf ::


main_plos.tex ::
	make -B main.pdf
	grep -v includegraphics main.tex > main_plos_tmp.tex
	latexpand -expand-bbl main.bbl main_plos_tmp.tex -o main_plos.tex
	rm main_plos_tmp.tex

-include ~/makefile
