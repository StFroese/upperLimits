all: plots build/talk.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

plots: build/distribution.pdf

build/%.pdf: build
	python plots/$*.py

build/talk.pdf: FORCE | build
	TEXINPUTS=TUDoBeamerTheme: latexmk $(texoptions) talk.tex

preview: FORCE | build
	TEXINPUTS=TUDoBeamerTheme: latexmk $(texoptions) -pvc talk.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
