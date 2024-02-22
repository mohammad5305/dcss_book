LC = rubber
CFLAGS = -m xelatex
OBJS = dcssbook
CHPTRS = ch-species.aux ch-backgrounds.aux

all: pdf clean

pdf: $(OBJS).tex
	$(LC) $(CFLAGS) $(OBJS)

clean:
	rm $(OBJS).aux $(OBJS).out $(OBJS).toc $(OBJS).log $(OBJS).rubbercache $(CHPTRS)

install:
	sudo pacman -S --needed texlive texlive-langarabic rubber
