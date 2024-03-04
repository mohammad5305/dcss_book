LC = rubber
CFLAGS = -m xelatex
OBJS = dcssbook
CHPTRS = introduction.aux ch-species.aux ch-backgrounds.aux ch-15rune.aux ch-caster.aux ch-fighter.aux ch-gods.aux ch-hunter.aux ch-keybinds.aux ch-macros.aux ch-resistances.aux ch-stats.aux ch-weapons.aux

all: pdf clean

pdf: $(OBJS).tex
	$(LC) $(CFLAGS) $(OBJS)

clean:
	rm $(OBJS).aux $(OBJS).out $(OBJS).toc $(OBJS).log $(OBJS).rubbercache $(CHPTRS)

install:
	sudo pacman -S --needed texlive texlive-langarabic rubber
