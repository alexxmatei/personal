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

-- NOTE: These changes have to be manually integrated under lazy.nvim
-- lazy.nvim packets
{
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    highlight = {
      pattern = [[.*<(KEYWORDS)]], -- pattern or table of patterns, used for highlighting (vim regex)
    },
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},
