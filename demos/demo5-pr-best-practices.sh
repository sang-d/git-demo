#!/bin/bash
# using git-avh for quick setup

# on this demo, we'll show 3  merge strategy from 3 feature branch to develop and what happend after that
# using demo-fork repo


# clone an empty repo
git clone git@github.com:sang-d/demo3ways.git
cd demo3ways
git flow init -d

git flow feature start f1
echo 'change 1' >> f1.txt
ga . && gc -am 'feature/f1 change 1'
echo 'change 2' >> f1.txt
ga . &&  gc -am 'feature/f1 change 2'
echo 'change 3' >> f1.txt
ga . && gc -am 'feature/f1 change 3'
git flow feature publish f1
git flow feature start f2
echo 'change 1' >> f2.txt
ga . &&  gc -am 'feature/f2 change 1'
echo 'change 2' >> f2.txt
ga . &&  gc -am 'feature/f2 change 2'
echo 'change 3' >> f2.txt
ga . &&  gc -am 'feature/f2 change 3'
git flow feature publish f2
git flow feature start f3
echo 'change 1' >> f3.txt
ga . && gc -am 'feature/f3 change 1'
echo 'change 2' >> f3.txt
ga . && gc -am 'feature/f3 change 2'
echo 'change 3' >> f3.txt
ga . && gc -am 'feature/f3 change 3'
git flow feature publish f3


#  clone new reopo for 3 ways demo
git remote add test git@github.com:sang-d/test3ways.git
git checkout develop
git push test
git checkout feature/f1
git push test
git checkout feature/f2
git push test
git checkout feature/f3
git push test
git remote rm test
# PR: https://github.com/sang-d/git-demo-fork/pulls


# demo https://github.com/sang-d/test3ways
# showing repo on github and branches to use
# showing repo on local 
git branch -all
git log --all --graph

# showing source tree for better visual

# feature f1: merge commit
# update local
git pull
# delete feature branch and then update local
git fetch --prune

# feature f2: merge squash
git pull
# new commit added to develop

# feature f3: merge rebase, new tab
git pull
# 3 commits added to develop

# delete fetures branch and update
git fetch --prune
# showing on source tree: linear path but losing information on develop branch


