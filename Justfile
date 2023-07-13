set windows-shell := ["C:/Program Files/Git/bin/bash.exe", "-c"]

OUTDIR := "./out"
AUXDIR := "./.aux"
SRCFILE := "./root.tex"
LATEXMK_FLAGS := "--Werror"
LUALATEX_FLAGS := "--c-style-errors --file-line-error --halt-on-error --interaction=nonstopmode --shell-escape --synctex=1"

# Build the root LaTeX file into a PDF file.
build: (latexmk "")

# Build PDF file (if necessary) and then open it in a PDF viewer.
view: (latexmk "--pv")

# Delete both the output and auxiliary directories.
clean: clean-aux clean-out

# Delete the auxiliary directory.
clean-aux:
    rm --recursive --force -- '{{ AUXDIR }}'

# Delete the output directory.
clean-out:
    rm --recursive --force -- '{{ OUTDIR }}'

[private]
latexmk args:
    latexmk {{ args }} --lualatex --auxdir='{{ AUXDIR }}' --outdir='{{ OUTDIR }}' \
        {{ LATEXMK_FLAGS }} {{ LUALATEX_FLAGS }} \
        '{{ SRCFILE }}'
