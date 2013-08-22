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
opts="-DVBINSTALL-apt-get --skip_inline_comments"
#opts="--skip_inline_comments"

system doconce spellcheck -d .dict4spell $name.do.txt

system doconce format html $name --html_style=vagrant --html_template=template.html $opts
system doconce split_html $name

# Use title and author
name2=main_${name}
system doconce format pdflatex $name2 --device=paper $opts
system doconce ptex2tex $name2 envir=minted
pdflatex -shell-escape $name2
pdflatex -shell-escape $name2

theme=cbc
#theme=agni
system doconce sphinx_dir theme=cbc dirname=sphinx-rootdir-$theme author="Anders E. Johansen and Hans Petter Langtangen" $name2
system python automake_sphinx.py $opts

# Install in pub directory
dest=../../pub
rm -rf $dest/*-sphinx
cp -r css $name.html ._part*$name.html $name2.pdf $dest
cp -r sphinx-rootdir-$theme/_build/html $dest/${name}-sphinx-$theme


