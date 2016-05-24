#!/bin/bash
python pygreen.py gen ../rectificacionesavina-public
pushd .
cd ../rectificacionesavina-public
git add . 
git commit -m "meh " 
git push origin gh-pages

#find . -name '*.NEF' -execdir mogrify -format jpg {} \;
