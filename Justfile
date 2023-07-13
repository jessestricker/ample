set windows-shell := ["C:/Program Files/Git/bin/bash.exe", "-c"]

OUTDIR := "./out"
AUXDIR := "./.aux"
SRCFILE := "./root.tex"
LATEXMK_FLAGS := "--Werror"
LUALATEX_FLAGS := "--c-style-errors --file-line-error --halt-on-error --interaction=nonstopmode --shell-escape --synctex=1"

# Build the root PDF file in the output directory.
build:
    latexmk --lualatex --auxdir='{{ AUXDIR }}' --outdir='{{ OUTDIR }}' \
        {{ LATEXMK_FLAGS }} {{ LUALATEX_FLAGS }} \
        '{{ SRCFILE }}'

# Delete the auxiliary directory.
clean-aux:
    rm -rf '{{ AUXDIR }}'

# Delete the output and auxiliary directories.
clean: clean-aux
    rm -rf '{{ OUTDIR }}'

# Clean directories and build PDF.
rebuild: clean build
