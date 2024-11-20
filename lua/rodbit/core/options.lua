-- Globals
local opt = vim.opt

vim.opt.list = true
vim.opt.listchars = {
	space = " ", -- or use "." for a simple dot
	trail = "⋅", -- show trailing spaces
	tab = "  ", -- hide tabs
}

-- Performance
vim.loader.enable()
opt.redrawtime = 10000 -- Allow more time for loading syntax on large files

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- Trailing Whitespace
opt.fillchars:append({ eob = " " }) -- remove the ~ from end of buffer

-- Line Numbers
opt.relativenumber = true
opt.number = true
vim.o.list = true

-- Disable showing the mode below the statusline
opt.showmode = false

-- Tabs and Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true

-- Line Wrapping
opt.wrap = false
opt.scrolloff = 8
opt.cmdheight = 0

-- Search Settings
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Enable cursor line highlight
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- Mouse
opt.mouse = "a"

-- Backup and Swap Files
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- Persistent Undo
opt.undofile = true
