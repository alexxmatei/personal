:: Initialize scripts
:: Initializes environment so that all scripts and config files work properly
@echo off

:: echo. outputs a newline, for readability inside command shell
echo.
set "tempfile=%temp%\output.tmp"

::::::::::::::::::: Initialize .vimrc file :::::::::::::::::::::::::::::::::::::
:: Copy from the User path: personal repo to user profile path
:: Execute cmd and redirect err output to the temp file (avoid console output)
(copy %UP_PERSONAL_REPO%\configs\dotfiles\.vimrc ^
 %USERPROFILE%\.vimrc > nul 2>"%tempfile%" && (
	echo Compied .vimrc file from:
	echo   %UP_PERSONAL_REPO%\configs\dotfiles\.vimrc
	echo   to
	echo   %USERPROFILE%\.vimrc
)) || (
	set /p "error_message=" < "%tempfile%"
	echo FAILED to copy .vimrc file
	echo Error Message: %error_message%
)

echo.
:: Clean up by deleting the temporary file
del "%tempfile%"
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
