--0=========================================================================0
-- █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
-- ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█
--0=========================================================================0

-- Global Settings
vim.g.mapleader = ' ' -- Setting the leader key

-- Keymap Variables
local rm = vim.keymap.set

-- Terminal and Title Settings
vim.opt.title = true
vim.opt.titlestring = '%t'

-- Indentation and Formatting Settings
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.tabstop = 4


-- Display Settings
vim.opt.cursorline = false
vim.opt.expandtab = true
vim.opt.lazyredraw = true
vim.opt.mouse = 'a'
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.syntax = 'enable'
vim.opt.timeoutlen = 300
vim.opt.wildmenu = true
vim.opt.wrap = false
vim.opt.completeopt = 'menuone,preview,noselect'
vim.opt.updatetime = 50
vim.opt.scrolloff = 10
vim.opt.signcolumn = 'no'

-- List and Match Settings
vim.opt.list = true
vim.opt.listchars = { tab = "   ", leadmultispace = '│   ' }
vim.opt.showmatch = true

-- GUI and Encoding Settings
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.encoding = 'utf-8'

-- Search and Case Settings
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.smartindent = true

-- Line Number Settings
vim.opt.number = true
