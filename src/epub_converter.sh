#!/usr/bin/env bash
# THIS CODE CONVERTS ALL EPUB FILES TO TXT
DIRECTORY="/home/erol/Downloads/yandex/Downloads/epub/"
NEWDIRECTORY="/root/IdeaProjects/TEXTPROJECT/epub/"
suffix=".epub"

rm /new/*
cd $DIRECTORY
pwd

for file in *.epub
do
 echo $file
 newName=${file%$suffix}
 echo $newName".txt"
 epub2txt $file > /new/"$newName"
done

cp /new/* $NEWDIRECTORY/