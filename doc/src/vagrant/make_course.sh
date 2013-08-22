#!/bin/sh
name=vagrant_course
doconce spellcheck -d .dict4spell $name.do.txt
if [ $? -ne 0 ]; then exit; fi

doconce format html $name --html_style=bloodish COURSE=INF1100 --html_output=vagrant_inf1100
scp vagrant_inf1100.html inf1100@login.ifi.uio.no:www_docs/

doconce format html $name --html_style=bloodish COURSE=INF5620 --html_output=vagrant_inf5620
