-- Set a vertical ruler as a recommended best practice not to cross over
-- This makes it easier to work with multiple editors in split windows amongst other things
vim.opt.colorcolumn = "80"

-- PowerShell
-- Set PowerShell as the default shell for running shell commands
vim.o.shell = "powershell"
-- Set the shell command flag for PowerShell
vim.o.shellcmdflag = "-c"
-- Set shellxquote to an empty string
vim.opt.shellxquote = ''
