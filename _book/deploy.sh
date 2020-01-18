#!bin/sh
gitbook build
git add .
git commit -m "Update"
git push -u origin master

