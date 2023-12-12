local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- Cosmetics
    'nvim-lualine/lualine.nvim',
    'navarasu/onedark.nvim',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-tree/nvim-web-devicons',

    -- Coding helpers
    'mattn/emmet-vim',

    -- LSP, debug
    'williamboman/mason.nvim', -- lsp manager
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    -- 'mfussenegger/nvim-dap',                -- debug
    -- 'rcarriga/nvim-dap-ui',                 -- debug ui
    'hrsh7th/cmp-nvim-lsp',       -- autocompletion
    'hrsh7th/nvim-cmp',           -- autocompletion
    'L3MON4D3/LuaSnip',
    'mhartington/formatter.nvim', -- formatter

    -- Navigation
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'NeogitOrg/neogit',
        dependencies = {
            'nvim-lua/plenary.nvim',         -- required
            'nvim-telescope/telescope.nvim', -- optional
            'sindrets/diffview.nvim',        -- optional
            'ibhagwan/fzf-lua',              -- optional
        },
        config = true
    },
})
