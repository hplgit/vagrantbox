#!/bin/bash
set -x

function system {
  "$@"
  if [ $? -ne 0 ]; then
    echo "Unsuccessful run of $@"
    exit 1
  fi
}


# Build various formats
name=vagrant_box
system doconce spellcheck -d .dict4spell $name.do.txt
system doconce format html $name --html_style=vagrant --html_template=template.html
system doconce split_html $name

# Use title and author
name2=main_${name}
system doconce format pdflatex $name2 DEVICE=paper
system doconce ptex2tex $name2 envir=minted
pdflatex -shell-escape $name2
pdflatex -shell-escape $name2

#doconce sphinx_dir $name theme=agni
system doconce sphinx_dir $name2 theme=cbc
system python automake_sphinx.py

dest=../../pub
rm -rf $dest/sphinx
cp -r css _static $name.html ._part*$name.html $name2.pdf sphinx-rootdir/_build/html $dest
cd $dest
mv -f html sphinx

