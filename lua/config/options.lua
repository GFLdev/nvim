local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor line
opt.cursorline = true
opt.cursorcolumn = true

-- Column guide
opt.cc = "80"

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Modifiable
opt.ma = true

-- Fold
opt.foldmethod = "indent"
opt.foldnestmax = 10
opt.foldlevel = 1

-- Fold enable
vim.cmd([[set nofoldenable]])

-- Make last session file
vim.cmd([[
	autocmd! VimLeave * mksession ~/.Session.vim
]])

-- Explorer
vim.cmd("let g:netrw_liststyle = 3")
