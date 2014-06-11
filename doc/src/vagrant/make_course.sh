#!/bin/sh
name=vagrant_course
doconce spellcheck -d .dict4spell $name.do.txt
if [ $? -ne 0 ]; then exit; fi

if [ $# -lt 1 ]; then
course=INF1100
else
course=$1
fi

doconce format html $name --html_style=bootstrap_bloodish COURSE=$course --html_output=vagrant_$course

if [ $course = "INF1100" ]; then
scp vagrant_${course}.html inf1100@login.ifi.uio.no:www_docs/
elif [ $course = "INF5620" ]; then
scp vagrant_${course}.html hpl@linux.simula.no:www_docs/tmp/
elif [ $course = "simula_summer_course" ]; then
scp vagrant_${course}.html hpl@linux.simula.no:www_docs/tmp/
else
echo "Illegal command line argument $course"
fi

cp vagrant_${course}.html ../../pub/courses
