--0=============================================================================================0
-- █▀█ █ █
-- █▄█ █ █▄▄
--0=============================================================================================0
return{
    'stevearc/oil.nvim',
    config = function()
        -- remaps
        vim.keymap.set('n', '<leader>e', ':Oil<CR>')
        require('oil').setup({
            default_file_explorer = true,
            keymaps = {
                ['<leader>w'] = ':w<CR>',
            },
            view_options = { show_hidden = true },
            columns = {
                "icon",
            },
            skip_confirm_for_simple_edits = true,
            float = {
                padding = 2,
                max_width = 50,
                max_height = 0,
                border = "rounded",
                win_options = {
                    winblend = 0,
                },
                override = function(conf)
                    return conf
                end,
            },
        })
    end
}

