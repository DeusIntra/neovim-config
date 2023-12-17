require('keys/helper')

local g = vim.g

g.mapleader = ' '
nm('<leader>ee', ':Texplore<CR>')

nim('<c-j>', function() vim.cmd('silent! .m.+1<cr>') end)
nim('<c-k>', function()
    vim.cmd('silent! .-1m.<cr>')
    vim.cmd('normal! k')
end)

tm('<esc>', '<C-\\><C-N>')

