#!/usr/bin/env bash
# THIS CODE CONVERTS ALL PDF FILES TO TXT
DIRECTORY="/home/erol/Downloads/yandex/Downloads/epub/"
NEWDIRECTORY="/root/IdeaProjects/TEXTPROJECT/pdf/"
suffix=".pdf"

rm /new/*
cd $DIRECTORY
pwd

for file in *.pdf
do
 echo $file
 newName=${file%$suffix}
 echo $newName".txt"
 pdftotext $file  /new/"$newName"
done

cp /new/* $NEWDIRECTORY/