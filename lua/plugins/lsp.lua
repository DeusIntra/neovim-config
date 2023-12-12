-- Setup a few default options for lspconfig.
-- Use mason.nvim and mason-lspconfig.nvim to manage all your LSP servers.
-- Setup completions using nvim-cmp.
require('keys/helper')
local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }

        nm('K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        nm('gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        nm('gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        nm('go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        nm('gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        nm('gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        nm('<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        nxm('<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        nm('<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

        nm('gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
        nm('[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
        nm(']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
    end
})

local default_setup = function(server)
    lspconfig[server].setup({
        capabilities = lsp_capabilities,
    })
end


require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'volar',
    },
    handlers = {
        default_setup,
        lua_ls = function()
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT'
                        },
                        diagnostics = {
                            globals = { 'vim' },
                        },
                        workspace = {
                            library = {
                                vim.env.VIMRUNTIME,
                            }
                        }
                    }
                }
            })

            lspconfig.volar.setup({
                filetypes = {
                    'typescript',
                    'javascript',
                    'javascriptreact',
                    'typescriptreact',
                    'vue',
                    'json'
                }
            })

            -- lspconfig.omnisharp.setup({})
        end,
    },
})

local cmp = require('cmp')
cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    mapping = cmp.mapping.preset.insert({
        -- Enter key confirms completion item
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl + space triggers completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})
