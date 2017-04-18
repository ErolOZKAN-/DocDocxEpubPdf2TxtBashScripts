#!/bin/bash
# THIS CODE CONVERTS ALL DOC FILES TO TXT
DIRECTORY="/home/erol/Downloads/yandex/Downloads/epub/"
NEWDIRECTORY="/root/IdeaProjects/TEXTPROJECT/doc/"
suffix=".doc"

rm /new/*
cd $DIRECTORY
pwd

for file in *.doc
do
 echo $file
 newName=${file%$suffix}
 echo $newName".txt"
 catdoc $file > /new/"$newName"
done

cp /new/* $NEWDIRECTORY/
