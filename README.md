# ample

A LaTeX template with batteries included.

[**👀 Preview 👀**](https://github.com/jessestricker/ample/releases/latest/download/root.pdf)

## Usage

The best way to use this template is with the wonderful
[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
extension for [Visual Studio Code](https://code.visualstudio.com), which
provides a full IDE for writing LaTeX documents.

This repository contains a [file](.vscode/settings.json) with the correct
compilation recipe and linter settings already set up.

Alternatively, you can also use [just](https://just.systems/man/en) to build the
PDF:

```console
$ just build
...
```

The [Justfile](./Justfile) also contains other useful target:

```console
$ just --list
Available recipes:
    build file=SRCFILE # Build the root LaTeX file into a PDF file.
    clean              # Delete both the output and auxiliary directories.
    clean-aux          # Delete the auxiliary directory.
    clean-out          # Delete the output directory.
    view file=SRCFILE  # Build PDF file (if necessary) and then open it in a PDF viewer.
```
