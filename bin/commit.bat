@echo off
set message=%1
echo adding changes...
git add .
echo commiting changes...
git commit -m "%1"
echo pushing changes..
git push origin master

