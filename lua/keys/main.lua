require('keys/helper')
local g = vim.g

g.mapleader = " "
nm('<leader>ee', ':Texplore<CR>')

im('<c-j>', '<esc>:.m.+1<cr>I')
nm('<c-j>', ':.m.+1<cr>')
im('<c-k>', '<esc>:.-1m.<cr>kI')
nm('<c-k>', ':.-1m.<cr>k')

