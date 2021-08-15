@echo off

set repo=%1
set key=%2

set /p key_file_name=<C:\Users\%USERNAME%\cs\bat\secret

python C:\Users\%USERNAME%\security_scripts\decrypt.py %key%

set /p user=<C:\Users\%USERNAME%\Documents\.credentials\github_username.txt
set /p gh_key=<C:\Users\%USERNAME%\Documents\.credentials\%key_file_name%

git clone "https://%gh_key%@github.com/%user%/%repo%.git"

python C:\Users\%USERNAME%\security_scripts\encrypt.py %key%