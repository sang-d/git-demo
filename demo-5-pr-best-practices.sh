#!/bin/bash

# on this demo, we'll show 3  merge strategy from 3 feature branch to develop and what happend after that
# using demo-fork repo

# clone an empty repo and set up for 3 PRs
git clone git@github.com:sang-d/demo3ways.git
cd demo3ways
git flow init -d

git checkout -b feature/f1 develop
echo 'change 1' >> f1.txt
ga . && gc -am 'feature/f1 change 1'
echo 'change 2' >> f1.txt
ga . &&  gc -am 'feature/f1 change 2'
echo 'change 3' >> f1.txt
ga . && gc -am 'feature/f1 change 3'
git push --set-upstream origin feature/f1

git checkout -b feature/f2 develop
echo 'change 1' >> f2.txt
ga . &&  gc -am 'feature/f2 change 1'
echo 'change 2' >> f2.txt
ga . &&  gc -am 'feature/f2 change 2'
echo 'change 3' >> f2.txt
ga . &&  gc -am 'feature/f2 change 3'
git push --set-upstream origin feature/f2

git checkout -b feature/f3 develop
echo 'change 1' >> f3.txt
ga . && gc -am 'feature/f3 change 1'
echo 'change 2' >> f3.txt
ga . && gc -am 'feature/f3 change 2'
echo 'change 3' >> f3.txt
ga . && gc -am 'feature/f3 change 3'
git push --set-upstream origin feature/f3


# demo https://github.com/sang-d/demo3ways
# showing repo on github and branches to use
# showing repo on local 
git branch -all
git log --all --graph

# showing source tree for better visual

# feature f1: merge commit on UI
# update local
git pull
# on source tree, show new merged commit on develop branch
# delete feature branch on remote and then update local
git fetch --prune

# feature f2: merge squash on UI
git pull
# on source tree, show new commit added to develop but not merged 

# feature f3: merge rebase on UI
git pull
# on source tree, 3 commits added to develop

# delete fetures branch and update
git fetch --prune
# showing on source tree: linear path but losing information on develop branch


