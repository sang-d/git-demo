#!/bin/bash

# creating commit on origin remote 
echo "adding changes" >> changes.txt

git add  changes.txt > /dev/null 2>&1

git commit -m "adding changes"  > /dev/null 2>&1

echo "adding another text" >> changes.txt

git commit -am "adding another text" > /dev/null 2>&1

git push > /dev/null 2>&1

