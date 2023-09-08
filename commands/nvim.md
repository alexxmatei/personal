# Neovim commands
## Change directory
#### This command changes the working directory to the relative path of the directory containing the currently opened file.
```nvim
:cd %:h
```
#### This command changes the working directory to the absolute path of the directory containing the currently opened file.
```nvim
:cd %:p:h
```
Where:   
`% ` - the path of the currently opened file  
`:h` - modifier used to extract the directory portion of a file path  
`:p` - modifier used to extract the directory portion of a file path  
## Open history buffer
#### This command opens a history buffer where previous commands can be browsed and executed (by pressing ENTER)
```nvim
q:
```
This command has to be entered from normal mode (not command mode).
#### This command changes the height of the command window (where you enter `:` commands in command mode)
```nvim
:set cmdheight=VALUE
```
