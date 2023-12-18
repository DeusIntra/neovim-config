require('keys/helper')

-- telescope
local tb = require('telescope.builtin')
nm('<leader>ff', tb.find_files)
nm('<leader>fg', tb.live_grep)
nm('<leader>fb', tb.buffers)
nm('<leader>fh', tb.help_tags)

-- toggleterm
nm('<leader>tt', function() vim.cmd('ToggleTerm size=5 dir=git_dir direction=horizontal') end)

-- nvim tree
nm('<leader>ee', function () vim.cmd('silent! NvimTreeToggle') end)

-- neogit
nm('<leader>gg', function () vim.cmd('silent! Neogit') end)

