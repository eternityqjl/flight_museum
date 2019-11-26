#!bin/sh
git add .
git commit -m "Update"
git push -u origin master
gitbook build

