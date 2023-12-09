--0=========================================================================0
-- █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
-- ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█
--0=========================================================================0

local opt = vim.opt
-- Global Settings
vim.g.mapleader = ' ' -- Setting the leader key

-- Terminal and Title Settings
opt.title = true
opt.titlestring = '%t'

-- Indentation and Formatting Settings
opt.autoindent = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smarttab = true
opt.tabstop = 4

-- vim cursor
opt.guicursor = ""

-- Display Settings
opt.cursorline = false
opt.expandtab = true
opt.lazyredraw = true
opt.mouse = 'a'
opt.ruler = true
opt.showcmd = true
opt.syntax = 'enable'
opt.timeoutlen = 300
opt.wildmenu = true
opt.wrap = false
opt.completeopt = 'menuone,preview,noselect'
opt.updatetime = 50
opt.scrolloff = 10
opt.signcolumn = 'no'

-- List and Match Settings
opt.list = true
opt.listchars = { tab = "   ", leadmultispace = '│   ', eol=" " }
opt.showmatch = true

-- GUI and Encoding Settings
opt.termguicolors = true
opt.clipboard = 'unnamedplus'
opt.encoding = 'utf-8'

-- Search and Case Settings
opt.hlsearch = false
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true
opt.smartindent = true

-- Line Number Settings
opt.number = true
opt.fillchars = {
    eob = " "
}
