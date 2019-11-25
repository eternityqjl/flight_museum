#!bin/sh
git checkout master
git add .
git commit -m "Update"
git push -u origin master
gitbook build

