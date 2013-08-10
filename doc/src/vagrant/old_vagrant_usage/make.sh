#!/bin/sh
# Build various formats
name=Vagrant

doconce format html $name

doconce format pdflatex $name
doconce ptex2tex $name envir=minted
pdflatex -shell-escape $name
pdflatex -shell-escape $name

doconce sphinx_dir $name theme=agni
python automake_sphinx.py

if [ -d pub ]; then
  rm -rf pub
fi
mkdir pub
cp -r $name.html $name.pdf sphinx-rootdir/_build/html pub
cd pub
mv html sphinx

