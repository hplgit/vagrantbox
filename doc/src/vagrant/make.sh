#!/bin/sh
set -x

# Build various formats
name=vagrant_box

doconce format html $name --html_style=vagrant --html_template=template.html
doconce split_html $name
exit

doconce format pdflatex $name
doconce ptex2tex $name envir=minted
pdflatex -shell-escape $name
pdflatex -shell-escape $name

doconce sphinx_dir $name theme=agni
python automake-sphinx.py

if [ -d pub ]; then
  rm -rf pub
fi
mkdir pub
cp -r $name.html $name.pdf sphinx-rootdir/_build/html pub
cd pub
mv html sphinx

