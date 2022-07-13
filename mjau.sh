#!/bin/bash
if [[ $# -eq 0 ]] ; then
  exit 0
fi
for file in $(ls "$@");
  do
   if [[ "$file" =~ \.gz$ ]];
     then
        zcat "$file";
     else
        cat "$file";
   fi
done
