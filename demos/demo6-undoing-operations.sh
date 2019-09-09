#!/bin/bash

git clone git@github.com:sang-d/git-demo-fork.git
cd git-demo-fork
git flow init -d

git checkout develop

echo 'add change' >> changes/dev.txt
git status
git checkout changes/dev.txt
git status


echo 'add change' >> changes/dev.txt
git add .
git status
git checkout changes/dev.txt
git status
git reset HEAD
git status
git checkout changes/dev.txt
git status


# reset to previous commit
echo "change 1" >> changes/reset.txt
git add .
git commit -m "add change 1"
echo "change 2" >> changes/reset.txt
git add .
git commit -m "add change 2"

# showing status
git log

git reset --soft #commit-hash
git status # showing changes is added on staging

git log
git reset --hard #commit-hash
git status