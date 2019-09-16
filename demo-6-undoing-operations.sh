#!/bin/bash

# undoing operations: git checkout, git reset, git reflog

# set up empty repo
mkdir git-undo
cd git-undo
git init

# init commit
git checkout -b develop 
echo "init" >> changes.txt
git add . && git commit -m "adding init commit"

# add change
echo 'add change' >> changes.txt
# show change on working directory
git status
# add change to index staging
git add changes.txt
# show change on index staging, note command to undo
git status
# undo changes from staging back to working directory
git reset HEAD
# show change moved back to WD, note command to undo on WD
git status
# undo changes on working directory
git checkout change.txt
# verify change is undo
git status

# RESET to previous commit
# adding some new commits
echo "change 1" >> reset.txt
git add . && git commit -m "add change 1"
echo "change 2" >> reset.txt
git add . && git commit -m "add change 2"

# show log, and copy all log to a text file for hash reference
git log

git reset --soft #commit-hash
git status #show changes is added on staging

git log
git reset --mixed #commit-hash
git status

git log
git reset --hard #commit-hash
git status

git reflog # showing all operations and can reset to any commit
