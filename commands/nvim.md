# Neovim commands
## Change directory
### This command changes the working directory to the relative path of the directory containing the currently opened file.
```nvim
:cd %:h
```
### This command changes the working directory to the absolute path of the directory containing the currently opened file.
```nvim
:cd %:p:h
```

Where:   
`% ` - the path of the currently opened file  
`:h` - modifier used to extract the directory portion of a file path  
`:p` - modifier used to extract the directory portion of a file path  
