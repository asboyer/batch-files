@echo off

set repo_name=%1
set key=%2

set /p key_file_name=<C:\Users\%USERNAME%\cs\bat\secret

python C:\Users\%USERNAME%\security_scripts\decrypt.py %key%

set /p user=<C:\Users\%USERNAME%\Documents\.credentials\github_username.txt
set /p gh_key=<C:\Users\%USERNAME%\Documents\.credentials\%key_file_name%

python C:\Users\%USERNAME%\cs\python_gh_automation\create.py %user% %gh_key% %repo_name%

git clone "https://%gh_key%@github.com/%user%/%repo_name%.git"
cd %repo_name%

python C:\Users\%USERNAME%\security_scripts\encrypt.py %key%