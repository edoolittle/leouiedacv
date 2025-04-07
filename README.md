# Curriculum Vitae

These are the LaTeX sources for my academic CV.

**Download** the latest compiled PDF:
[cv.pdf](https://raw.githubusercontent.com/edoolittle/cv/pdf/cv.pdf)

## Template

You're free to reuse and modify this template under the terms of the BSD
3-clause License (see `LICENSE.txt`).

To use it:

* Click on the ["Use this template"](https://github.com/edoolittle/cv/generate)
  button to grab a copy of the repository.
* Optional: install Tectonic, either from their website or using the conda
  `environment.yml` file provided in the repository.
* Fill out the variables and fields in the `.tex` file.
* Compile the PDF to check the results with `make show`.
* Push your changes and GitHub Actions should do its magic and make the PDF
  available at `https://github.com/YOURUSERNAME/cv/raw/pdf/cv.pdf`.

### About

This project is adapted from
["leouieda/cv"](https://github.com/leouieda/cv), with some corrections
and improvements.  It builds on GitHub using Tectonic after every
push, but you can build it on your local machine too, with your local
LaTeX environment, which you should do to check your work before
pushing it to your GitHub site.  I have also added "make commit" and
"make push" instructions to the Makefile, but it is probably better if
you commit and push using custom git commands (or however you would
normally interact with GitHub).

I find the CV to be quite readable, with important information easily
accessible, and the typesetting is better than a typical effort with
Microsoft Word.

I have left some of the original leouieda CV in cv.tex, in comments,
but I may eventually remove it.

### Original Documentation by leouieda

I decided to make my own template after using `moderncv` for a while.
I wanted a cleaner look and something that is more unique (as much as
an academic CV can be).  It was also a chance for me to learn some
LaTeX templating (and procrastihack a little).

## Building

I use [Tectonic](https://tectonic-typesetting.github.io) to build the
PDF from the sources.  It's very convenient, can be installed from
[conda-forge](https://github.com/conda-forge/tectonic-feedstock), and
is faster than using a normal LaTeX compiler.  There are many ways to
install it (see their website for instructions).

I highly recommend using the `Makefile`:

* `make`: builds the PDF
* `make show`: opens the PDF on the default web browser
* `make clean`: removes the built PDF and any other generated files

## Deploying

A PDF is compiled automatically by GitHub Actions with every commit to
the `main` branch and uploaded to the `pdf` branch.  This way, the
compiled PDF is updated and made available on the internet
automatically.

## License

All LaTeX template source code is distributed under the [BSD 3-clause
License](https://opensource.org/licenses/BSD-3-Clause).
