LC = rubber
CFLAGS = -m xelatex
OBJS = dcssbook

all: pdf clean

pdf: $(OBJS).tex
	$(LC) $(CFLAGS) $(OBJS)

clean:
	rm $(OBJS).aux $(OBJS).out $(OBJS).toc $(OBJS).log $(OBJS).rubbercache
