@echo off
set path=http://svn.wdc.com/svn/ddt/web64/applications/
set pathToSvn="C:\Program Files\TortoiseSVN\bin\svn.exe"

%pathToSvn% ls %path% > paths.txt
for /f "tokens=*" %%a in (paths.txt) do (
	echo %pathToSvn% checkout %path%%%a %%a
	%pathToSvn% checkout %path%%%a %%a
)
pause