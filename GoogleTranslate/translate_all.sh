#!/bin/bash

sourceLang=en
if [ ! -z "$2" ]; then
  sourceLang=$2
fi
sourceFile=input.xml
if [ ! -z "$3" ]; then
  sourceFile=$3
fi

if [ ! -f $sourceFile ]; then
  echo "Source file not found, expecting $sourceFile"
  exit
fi

if [ -z "$1" ]; then
  echo "Usage $0 /path/to/src/main/res [en] [strings.xml]"
  exit
fi

if [ ! -d $1 ]; then
  echo "Passed directory not found: $1"
  exit
fi

logfile=output.log
echo . > $logfile
for f in $1/values-b*; do
  lang=${f: -2}
  newfile=strings_$lang.xml
  echo "translating from $sourceLang to $lang: $sourceFile -> $newfile"
  python3 gtranslate.py $sourceLang $lang $sourceFile $newfile >> $logfile 2>&1
done

echo "all done! you can check logs in $logfile"

