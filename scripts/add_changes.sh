#!/bin/bash

# creating commit on origin remote 
echo "adding changes" >> changes.txt

gc -am "adding changes"

echo "adding another text" >> changes.txt

gc -am "adding another text"

git push


# experiment with fork repo when pushing

