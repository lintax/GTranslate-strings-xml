#!/bin/bash

if [ ! -f input.xml ]; then
  echo "Place source file in the current folder, naming it input.xml"
  exit
fi

if [ -z "$1" ]; then
  echo "Usage $0 /path/to/src/main/res"
  exit
fi

if [ ! -d $1 ]; then
  echo "Usage $0 /path/to/src/main/res (path not found!)"
  exit
fi

logfile=output.log
echo . > $logfile
for f in $1/values-b*; do
  lang=${f: -2}
  newfile=strings_$lang.xml
  echo "translating to $lang -> $newfile"
  python3 gtranslate.py en $lang input.xml $newfile >> $logfile 2>&1
done

echo "all done! you can check logs in $logfile"
