SLIDES := $(patsubst %.md,%.md.slides.pdf,$(wildcard *.md))
HANDOUTS := $(patsubst %.md,%.md.handout.pdf,$(wildcard *.md))

all : $(SLIDES) $(HANDOUTS)

%.md.slides.pdf : %.md
	pandoc $^ -t beamer --slide-level 2 -o $@

%.md.handout.pdf : %.md
	pandoc $^ -t beamer --slide-level 2 -V handout -o $@ 
		

clobber : 
	rm -f $(SLIDES)
	rm -f $(HANDOUTS)
