--0=============================================================================================0
-- █▀█ █ █
-- █▄█ █ █▄▄
--0=============================================================================================0
return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- remaps
        vim.keymap.set('n', '<leader>e', ":Oil<cr>", { silent = false })
        require('oil').setup({
            default_file_explorer = true,
            keymaps = {
                ['<leader>w'] = ':w<CR>',
                ["w"] = "actions.select",
                ["o"] = "actions.select",
                ["W"] = "actions.parent",
                ["<ESC>"] = "actions.close",
                ["q"] = "actions.close",
            },

            win_options = {
                wrap = false,
                signcolumn = "no",
                cursorcolumn = false,
                foldcolumn = "0",
                spell = false,
                list = false,
                conceallevel = 3,
                concealcursor = "nvic",
                number = false
            },
            view_options = { show_hidden = true },
            columns = {
                win_options = {
                    "icon",
                },
                skip_confirm_for_simple_edits = true,
                float = {
                    padding = 2,
                    max_width = 50,
                    max_height = 0,
                    border = "rounded",
                    winblend = 0,
                },
                override = function(conf)
                    return conf
                end,
            },
        })
    end
}
