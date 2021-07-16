@echo off
set message=%1
set add=%2
set branch=%3
set remote=%4
echo adding changes...
if %2.==. (set add=".")
git add %add%
echo commiting changes...
if %1.==. (git commit -m "automated commit --updating repository") else (git commit -m %message%)
echo pushing changes..
if %3.==. (set branch="master")
if %4.==. (set remote="origin")
git push %remote% %branch%
