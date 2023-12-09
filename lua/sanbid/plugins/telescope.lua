--0=============================================================================================0
    -- ▀█▀ █▀▀ █░░ █▀▀ █▀ █▀▀ █▀█ █▀█ █▀▀
    -- ░█░ ██▄ █▄▄ ██▄ ▄█ █▄▄ █▄█ █▀▀ ██▄
    --0=============================================================================================0
return    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            -- remaps
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files)
            vim.keymap.set('n', '<leader><leader>', builtin.find_files)
            vim.keymap.set('n', '<leader>fw', builtin.live_grep)
            vim.keymap.set('n', '<leader>fb', builtin.buffers)
            vim.keymap.set('n', '<leader>fh', builtin.help_tags)
            vim.keymap.set('n', '<leader>fr', builtin.oldfiles)
            -- telescope's setup
            require('telescope').setup {
                defaults = {
                    sorting_strategy = 'ascending',
                    layout_strategy = 'horizontal',
                    layout_config = {
                        horizontal = {
                            prompt_position = 'top',
                            preview_width = 0.5,
                            results_width = 0.5,
                            height = 0.5,
                            preview_cutoff = 120,
                        }
                    },
                },
            }
        end
    }

