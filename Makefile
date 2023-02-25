.SUFFIXES: .tex .pdf

.PHONY: all clean

all: full

full: clean fonts results/full/CV_Dmytro_Kushchevskyi_full.pdf

fonts:
	mkdir fonts
	wget -O fonts/audiowide.zip https://fonts.google.com/download?family=Audiowide
	unzip fonts/audiowide.zip -d fonts/audiowide
	rm fonts/audiowide.zip

results/%.pdf: variants/%.tex
	mkdir -p $(dir $@)
	xelatex -halt-on-error -output-directory=$(dir $@) $<

clean:
	rm -rf results
