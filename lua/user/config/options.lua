-- for conciseness
local gopt = vim.g
local opt = vim.opt

-- global options
-- keys
vim.g.mapleader = " " -- define <space> as global leader key

-- editor options
-- files
opt.swapfile = false -- disble swap files- default colorscheme

-- persistence
opt.undofile = true -- enables persistent undo, which saves undo history to a file
opt.undolevels = 10000 -- sets the maximum number of changes that can be undone

-- appearance
opt.termguicolors = true -- true color support

-- line numbers
opt.relativenumber = false -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- tabs & indentation
opt.tabstop = 2 -- sets the number of column spaces for a tab character
opt.shiftwidth = 2 -- sets the number of spaces for each indent level
opt.expandtab = true -- converts tab characters into spaces
opt.autoindent = true -- copy indent from current line when starting new on


vim.cmd([[colorscheme habamax]])
