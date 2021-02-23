@echo off
set name=%1
rmdir /s build dist %1.egg-info
