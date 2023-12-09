local rm = vim.keymap.set

--0=========================================================================0
-- █▀█ █▀▀ █▀▄▀█ ▄▀█ █▀█ █▀
-- █▀▄ ██▄ █░▀░█ █▀█ █▀▀ ▄█
--0=========================================================================0
-- QOL:
-- Search centering
rm('n', 'n', 'nzz')
rm('n', 'N', 'Nzz')

-- Deleting letters going to vim.oid
rm('n', 'x', '"_x')
rm('v', 'x', '"_x')

-- format pasted line.
rm('n', 'p', 'p==')

-- page movement up/down
rm('n', '<A-u>', '<S-Up>zz')
rm('n', '<A-d>', '<S-Down>zz')
rm('v', '<A-u>', '<S-Up>zz')
rm('v', '<A-d>', '<S-Down>zz')

--lsp
rm('n', '<leader>lf', function() vim.lsp.buf.format() end)
rm('n', '<leader>lr', function() vim.lsp.buf.rename() end)
rm('n', '<leader>la', function() vim.lsp.buf.code_action()  end)
rm('n', 'K', function() vim.lsp.buf.hover()  end)

-- Save file
rm('n', '<leader>w', ':w<CR>')

-- quit
rm("n", '<leader>q', ':q<cr>')

-- Move selected lines with alt arrows like in subl
rm('v', '<A-k>', ":m '<-2<CR>gv=gv")
rm('v', '<A-j>', ":m '>+1<CR>gv=gv")
rm('n', '<A-k>', ':m .-2<cr>==')
rm('n', '<A-j>', ':m .+1<cr>==')

-- split
rm('n', '<leader>|', '<Cmd>vsplit<CR>') -- vertical split
rm('n', '<leader>_', '<Cmd>split<CR>')  -- horizontal split

-- Move in splits with hjkl
rm('n', '<leader-h>', '<Cmd>wincmd h<CR>')
rm('n', '<C-j>', '<Cmd>wincmd j<CR>')
rm('n', '<C-k>', '<Cmd>wincmd k<CR>')
rm('n', '<C-l>', '<Cmd>wincmd l<CR>')
rm('t', '<C-h>', '<Cmd>wincmd h<CR>')
rm('t', '<C-j>', '<Cmd>wincmd j<CR>')
rm('t', '<C-k>', '<Cmd>wincmd k<CR>')
rm('t', '<C-l>', '<Cmd>wincmd l<CR>')

-- Resize splits
rm('n', '<S-Left>', '<Cmd>vertical resize -2<CR>')
rm('n', '<S-Right>', '<Cmd>vertical resize +2<CR>')
rm('n', '<S-Up>', '<Cmd>resize -2<CR>')
rm('n', '<S-Down>', '<Cmd>resize +2<CR>')

-- Indent/Unindent selected text with Tab and Shift+Tab
rm('v', '>', '>gv')
rm('v', '<', '<gv')

-- Abbrev
vim.cmd("cnoreabbrev Q  q")
vim.cmd("cnoreabbrev q1  q!")
vim.cmd("cnoreabbrev Q1  q!")
vim.cmd("cnoreabbrev Qa1 qa!")
vim.cmd("cnoreabbrev Qa qa")
vim.cmd("cnoreabbrev W  w")
vim.cmd("cnoreabbrev Wq wq")
vim.cmd("cnoreabbrev WQ wq")
vim.cmd("cnoreabbrev Set set")
vim.cmd("cnoreabbrev SEt set")
vim.cmd("cnoreabbrev SET set")

rm("v", "<leader>sr", '"hy:%s/<C-r>h//g<left><left>') -- Replace all instances of highlighted words
rm("n", "<leader>sr", '"hy:%s/<C-r>h//g<left><left>') -- Replace all instances of highlighted words
