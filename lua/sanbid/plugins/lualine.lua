--0=============================================================================================0
    -- █░░ █░█ ▄▀█ █░░ █ █▄░█ █▀▀
    -- █▄▄ █▄█ █▀█ █▄▄ █ █░▀█ ██▄
    --0=============================================================================================0
return    {
        'nvim-lualine/lualine.nvim',
        config = function()
            vim.o.showmode = false
            require('lualine').setup({
                options = {
                    icons_enabled = true,
                    theme = 'nightfly',
                },
                -- this part shows full path, helps navigate in Oil.
                sections = {
                    lualine_c = { { 'filename', path = 2 } }
                }
            })
        end
    }


