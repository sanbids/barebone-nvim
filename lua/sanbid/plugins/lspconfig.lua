--0=============================================================================================0
-- █░░ █▀ █▀█
-- █▄▄ ▄█ █▀▀
--0=============================================================================================0
return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
        local custom_attach = function(client, bufnr)
            print('Lsp Attached.')
        end
        --0=============================================================================================0
        -- █░░ █░█ ▄▀█
        -- █▄▄ █▄█ █▀█
        --0=============================================================================================0
        lspconfig.lua_ls.setup({
            on_attach = custom_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                    },
                    diagnostics = {
                        enable = true,
                        -- enable = false,
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME,
                        },
                    },
                    telemetry = { enable = false },
                },
            },
        })

        lspconfig.tsserver.setup({
            on_attach = custom_attach,
            capabilities = capabilities
        })

        lspconfig.tailwindcss.setup({
            on_attach = custom_attach,
            capabilities = capabilities
        })

        lspconfig.pyright.setup({
            on_attach = custom_attach,
            capabilities = capabilities
        })
        -- new server goes here:
        -- lspconfig.SERVER.setup({
        --    on_attach = custom_attach,
        --    capabilities = capabilities
        --    COPY PASTE SERVER SETTINGS HERE
        --})
    end
}
