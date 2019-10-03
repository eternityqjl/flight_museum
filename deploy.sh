#!bin/sh
git checkout master

#从github更新原文件并生成静态页面
git pull github master
gitbook build

#在coding-pages分支上进行操作
git checkout coding-pages
git rm --cached -r .
git clean -df
rm -rf *~
cp -r _book/* . 
echo "node_modules
_book">.gitignore
git add .
git commit -m "cs-book"

#发布页面并返回主分支
git push -u coding coding-pages -f
git checkout master