# My .bat files:
- `commit.bat` (automates adding, commiting, pushing changes all to one command)
	- first argument: the commit message (will default to `automated commit --updating repository`
	- second argument: the branch name (will default to `master`)
	- third argument: the remote name (will default to `origin`)
	
> ex: `commit "my message" main boyer-dev` will push to remote `main`, `branch boyer-dev` with a message of `my message` 
*** 
- `ls.bat` (same as dir, easier for UNIX users)
***
- `libclean.bat` (helps to clean up python libraries, pass in library name as arg like so: `libclean *libname*`
