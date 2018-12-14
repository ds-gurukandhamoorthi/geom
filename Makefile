.PHONY: clean

%.png: %.eps
	convert -density 300 $^ $@

%.pdf: %.eps
	convert -density 300 $^ $@

%.eps: %.euk
	eukleides $^ -o$@

clean:
	rm -f *pdf
	rm -f *png
