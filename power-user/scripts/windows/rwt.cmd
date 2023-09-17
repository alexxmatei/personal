:: Reset Windows Time

:: Disables echoing of commands.
:: The @ symbol is used to prevent the echo off & rem lines from displaying.
@echo off

:: Restart Windows Time service
@net stop w32time
@net start w32time

if %errorlevel% == 0 (
    :: Configures Windows Time service to sync with "time.windows.com" manually.
    :: Equivalent to "Set time automatically" from Date & time in windows.
    w32tm /config /manualpeerlist:"time.windows.com" /syncfromflags:manual /reliable:YES /update
    if %errorlevel% == 0 (
        echo Time reset reset successfully
    ) else (
	:: TODO - give a more descriptive message
        echo ERROR line 10
    )
) else (
    :: TODO - give a more descriptive message
    echo ERROR line 13
)
