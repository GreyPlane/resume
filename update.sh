#!/bin/bash
#
# Created by ice1000 at 2017/3/26
#

echo "======generating LaTeX========"

cabal run resume --verbose=0 -- en >> latex/resume.tex
cabal run resume --verbose=0 -- cn >> latex/resume-cn.tex
# cabal run resume --verbose=0 -- elab >> latex/resume-elab.tex

echo "=======building LaTeX========="

make -C latex >> latex/make.log
mv latex/*.pdf .
make -C latex clean-tex

echo "====removing useless files===="

rm -rf .git
rm *~
rm latex/*.log
rm latex/*.aux
rm latex/*.out
rm latex/*.fls

echo "===initialize git repository=="

git init --initial-branch=master
git remote add origin https://github.com/GreyPlane/resume.git
git config user.email 709327148@qq.com
git config user.name GreyPlane

echo "======committing changes======"

git add *
git add .gitignore
git commit -a -m "refresh everything" >> commit.log

echo "=====pushing, please wait====="

git push --force --set-upstream origin master
git status

echo "========all tasks done========"

rm *.log
