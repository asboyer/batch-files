@echo off
set message=%1

echo adding changes...
git add .
echo commiting changes...
if %1.==. (git commit -m "automated commit --updating repository") else (git commit -m %message%)
echo pushing changes..
git push origin master

