#!/bin/bash

# creating commit on origin remote 
echo "adding changes" >> changes.txt

ga changes.txt

gc -m "adding changes"

echo "adding another text" >> changes.txt

gc -am "adding another text"

git push

