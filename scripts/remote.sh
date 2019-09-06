#!/bin/bash

# showing no remote connected
git remote 
git remote -v 

# adding remote
git remote add origin git@github.com:sang-d/git-demo.git

# adding another remote 
git remote add fork git@github.com:sang-d/git-demo-fork.git

# displaying remote
git remote show

# deleting remote
git remote rm fork

# adding back remote
git remote add fork git@github.com:sang-d/git-demo-fork.git

# pushing changes to remote
git push --set-upstream origin master
git push --set-upstream fork master


