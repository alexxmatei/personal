-- Set a vertical ruler as a recommended best practice not to cross over
-- This makes it easier to work with multiple editors in split windows amongst other things
vim.o.colorcolumn = "80"

-- PowerShell
-- Set PowerShell as the default shell for running shell commands
vim.o.shell = "powershell"
-- Set the shell command flag for PowerShell
vim.o.shellcmdflag = "-c"
-- Set shellxquote to an empty string
vim.o.shellxquote = ''

-- Enable relative numbering for VIM
vim.o.relativenumber = true
