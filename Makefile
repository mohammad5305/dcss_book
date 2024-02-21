LC = rubber
CFLAGS = -m xelatex
OBJS = dcssbook
CHPTRS = ch-species.aux

all: pdf clean

pdf: $(OBJS).tex
	$(LC) $(CFLAGS) $(OBJS)

clean:
	rm $(OBJS).aux $(OBJS).out $(OBJS).toc $(OBJS).log $(OBJS).rubbercache $(CHPTRS)
