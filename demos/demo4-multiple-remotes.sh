#!/bin/bash

# clone remote, remote from clone operation is named `origin` 
git clone git@github.com:sang-d/git-demo.git
cd git-demo

# get list remote added
git remote 
git remote -verbose
git branch -a
git push

# remote remote
git remote rm origin

git remote -v
git branch -a

# add back origin
git remote add origin git@github.com:sang-d/git-demo.git
git branch -a

# retrieving all information about remote
git fetch origin 

# git pull or git push is not working because no tracking information
git pull

# git pull full command still work
git pull origin develop

# adding upstream for tracking
git branch -u origin/develop


# adding another remote from bitbucket
# # https://bitbucket.org/DINHXUANSANG/git-demo-new/src
git remote add bb-remote git@bitbucket.org:DINHXUANSANG/git-demo-new.git
git remote -v

# adding content to new remote
git push bb-remote develop

git status

# set up new tracking
git branch -u bb-remote/develop

git status

# recommend to have origin as tracking remote
