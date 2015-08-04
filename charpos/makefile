
fontlist = jkpex.font jkpsy.font jkpmi.font jkpmn7t.font jkpbn8t.font jkpmit8t.font jkpmn8t.font 

default:
	@echo ====
	@echo run: "'make foo.font'" for single foo font
	@echo run: "'make fonts'"    for bundle of fonts

clean:
	rm -f *.4ct *4tc *.aux *.fls *.idv *.dvi *.lg *.log *.xref *.tmp *.synctex.gz *.html.bak


%.htm:
	latex -halt-on-error -jobname $* "\def\fontlist{$*}\input{tex4ht_hcode}\HCode charpos.cfg,html,charset=utf-8.a.b.c.\input{charpos}"
	latex -halt-on-error -jobname $* "\def\fontlist{$*}\input{tex4ht_hcode}\HCode charpos.cfg,html,charset=utf-8.a.b.c.\input{charpos}"
	latex -halt-on-error -jobname $* "\def\fontlist{$*}\input{tex4ht_hcode}\HCode charpos.cfg,html,charset=utf-8.a.b.c.\input{charpos}"
	tex4ht -cunihtf $*
	t4ht   -cunihtf -p  $*


%.dvipng:
	dvipng -T tight -D 144 -v 1 $*.idv -o $*-i-%d.png

%.rubypng:
	ruby png-pages-html.rb $*

%.htmhtm:
	ruby html2html.rb $*.html

%.dir:
	rm -rf $* 
	mkdir $*
	mv $**.png x$*
	mv $**.html x$*
	mv $**.css x$*


%.font: %.htm %.dvipng %.rubypng  %.htmhtm %.dir
	@echo done $@. See x$@ folder.



fonts: $(fontlist) clean

.PHONY: clean 

