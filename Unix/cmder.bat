REM run me via "csudo cmder.bat" in cmder prompt

IF x%HOME%x==xx (
    ECHO "HOME not defined"
    GOTO ERROR
)

PUSHD %HOME%

IF EXIST .vimrc DEL .vimrc
mklink .vimrc %~dp0\.vimrc

REM .vimrc.local is just a reference on depot.
REM IF EXIST .vimrc.local  DEL .vimrc.local
robocopy .vimrc.local %~dp0\.vimrc.local /E /XC /XN /XO

IF EXIST .gitconfig  DEL .gitconfig
mklink .gitconfig %~dp0\.gitconfig

IF EXIST .agignore  DEL .agignore
mklink .agignore %~dp0\.agignore

IF EXIST .pylintrc  DEL .pylintrc
mklink .pylintrc %~dp0\.pylintrc

POPD

:ERROR
