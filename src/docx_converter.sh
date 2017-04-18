#!/usr/bin/env bash
# THIS CODE CONVERTS ALL DOCX FILES TO TXT
DIRECTORY="/home/erol/Downloads/yandex/Downloads/epub/"
NEWDIRECTORY="/root/IdeaProjects/TEXTPROJECT/docx/"
suffix=".docx"

rm /new/*
cd $DIRECTORY
pwd

for file in *.docx
do
 echo $file
 newName=${file%$suffix}
 echo $newName".txt"
 docx2txt $file  /new/"$newName"
done

cp /new/* $NEWDIRECTORY/
