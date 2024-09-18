vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Disable showing the mode below the statusline
opt.showmode = false

-- Tabs and Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true

opt.wrap = false
opt.scrolloff = 8
opt.cmdheight = 0

-- Search Settings
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"

opt.termguicolors = true
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Enable cursor line highlight
opt.cursorline = true
