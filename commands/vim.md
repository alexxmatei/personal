# VIM commands
## Basic options
#### Display line numbers
```
:set number
```
```
:set relativenumber
```
#### Set color column vertical ruler
```
:set colorcolumn COL_WIDTH
```
OR
```
:set cc COL_WIDTH
```
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

## Normal mode
#### Change/view/delete inside
```
ci SYMBOL
```
```
vi SYMBOL
```
```
di SYMBOL
```
Where `SYMBOL` can be `[`, `{`. `"`, `(`, etc.  
This command selects everything between `[]`, `{}`, `""`, `()`, etc.
If you're before the `SYMBOL` the cursor will automatically find and jump to the `SYMBOL` as well.

## Miscellaneous
#### Text Line Wrapping and Formatting (Set to textwidth)
```
gq
```
Vim 'gq' command: Formats and wraps text to a specified width for readability and style compliance.
By default this is 80 characters. If prefixed with [count] it will wrap text to that [count] value.
The texwidth option is what defines the default value, to change it use:
```
:set textwidth=<value>
```

#### Caesar cypher substitution for the current row by an offset of 13 letters
```
g?g?
```
or
```
g??
```
