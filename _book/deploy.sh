#!bin/sh
git checkout master
git add .
git commit -m "Update"
git push -u origin master

gitbook build

git checkout gh-pages

cp -r _book/* . 

git add .
git commit -m "Update"
git push -u origin gh-pages

git checkout master
