#!/bin/bash
# make sure git-avh install for setup

# on this demo, we'll show 3  merge strategy from 3 feature branch to develop and what happend after that
# using demo-fork repo



git clone git@github.com:sang-d/demo3ways.git
cd demo3ways
git flow init -d

git checkout develop
git push

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


#  clone reopo for 3 merge ways demo
git remote add test git@github.com:sang-d/test-3ways.git
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
