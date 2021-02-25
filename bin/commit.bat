@echo off
set message=%1
set branch=%2
set remote=%3
echo adding changes...
git add .
echo commiting changes...
if %1.==. (git commit -m "automated commit --updating repository") else (git commit -m %message%)
echo pushing changes..
if %2.==. (set branch="master")
if %3.==. (set remote="origin")
git push %remote% %branch%
