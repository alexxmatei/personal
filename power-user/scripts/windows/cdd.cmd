@rem Change Directory to Desktop

@rem Disables echoing of commands.
@rem The @ symbol is used to prevent the echo off & rem lines from displaying.
@echo off

rem Change directory to the env var pointing to the desktop folder.
cd /d %UP_DESKTOP%
rem The `/d` flag stands for change drive.
rem It allows us to change the drive as well, if needed.
