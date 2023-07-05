main.pdf ::


article_plos_one_pre.tex ::
	make main.pdf
	echo  "\\\def\\\toplosone{}\\\input{main.tex}" > $@
	latexpand -expand-bbl main.bbl article_plos_one_pre.tex -o /tmp/article_plos_one.tex

-include ~/makefile
