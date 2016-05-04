#!/bin/bash
find . -name "*ORIGINAL-*" | while read f
do
   newname=${f/ORIGINAL-/version-web/}
   convert "$f" -resize 600x600 "$newname"
   newname=${f/ORIGINAL-/thumb/}
   convert "$f" -resize 120x120 "$newname"
done

#find . -name '*.NEF' -execdir mogrify -format jpg {} \;
