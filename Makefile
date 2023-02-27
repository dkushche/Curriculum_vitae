.SUFFIXES: .tex .pdf

.PHONY: all clean

all: full

full: clean fonts results/full/CV_Dmytro_Kushchevskyi_full.pdf

fonts:
	mkdir fonts

	wget -O fonts/libre_baskerville.zip https://fonts.google.com/download?family=Libre%20Baskerville
	unzip fonts/libre_baskerville.zip -d fonts/libre_baskerville
	rm fonts/libre_baskerville.zip

	wget -O fonts/montserrat.zip https://fonts.google.com/download?family=Montserrat
	unzip fonts/montserrat.zip -d fonts/montserrat
	rm fonts/montserrat.zip

results/%.pdf: variants/%.tex
	mkdir -p $(dir $@)
	xelatex -halt-on-error -output-directory=$(dir $@) $<

clean:
	rm -rf results
