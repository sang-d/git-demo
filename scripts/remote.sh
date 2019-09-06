#!/bin/bash

# showing no remote connected
git remote 
git remote -v 

# add remote
git remote add origin git@github.com:sang-d/git-demo.git

# add another remote 
git remote add fork git@github.com:sang-d/git-demo-fork.git

# display remote
git remote show

# delete remote

