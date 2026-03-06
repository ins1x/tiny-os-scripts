Echo off & Chcp 1251 & Cls

set $SRC1="F:\1.txt"   & set $SRC2="F:\2.txt"    & call :action
set $SRC1=%$SRC1:1=2%  & set $SRC2=%$SRC1:2=1%   & call :action
pause & goto :Eof

:action
for /f %%a in ('Type "%$SRC2%"') Do (
(Find /i "%%a" %$SRC1% > nul)||Echo %%a 1>> Change.log)