#!/bin/bash
# git merge, git rebase, pr practice on github

# on this demo, we'll show 3  merge strategy from 3 feature branch to develop and what happend after that
# using demo-fork repo

git clone git@github.com:sang-d/git-demo-fork.git
cd git-demo-fork
git flow init -d

git checkout develop

git flow feature start f1

echo 'change 1' >> changes/f1.txt
gc -am 'feature/f1 change 1'
echo 'change 2' >> changes/f1.txt
gc -am 'feature/f1 change 2'
echo 'change 3' >> changes/f1.txt
gc -am 'feature/f1 change 3'
git flow feature publish f1


git flow feature start f2

echo 'change 1' >> changes/f2.txt
gc -am 'feature/f2 change 1'
echo 'change 2' >> changes/f2.txt
gc -am 'feature/f2 change 2'
echo 'change 3' >> changes/f2.txt
gc -am 'feature/f2 change 3'
git flow feature publish f2


git flow feature start f3

echo 'change 1' >> changes/f3.txt
gc -am 'feature/f3 change 1'
echo 'change 2' >> changes/f3.txt
gc -am 'feature/f3 change 2'
echo 'change 3' >> changes/f3.txt
gc -am 'feature/f3 change 3'
git flow feature publish f3


# PR: https://github.com/sang-d/git-demo-fork/pulls
