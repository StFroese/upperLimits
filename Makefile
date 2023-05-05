all: build/talk.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/talk.pdf: FORCE | build
	TEXINPUTS=TUDoBeamerTheme: latexmk $(texoptions) talk.tex

preview: FORCE | build
	TEXINPUTS=TUDoBeamerTheme: latexmk $(texoptions) -pvc talk.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
