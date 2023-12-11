require('nvim-treesitter.configs').setup({
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
        'html',
        'javascript',
        'typescript',
        'jsdoc',
        'css',
        'json',
        'lua',
        'c_sharp',
        'python',
        'vue',
        'markdown',
    },
})
