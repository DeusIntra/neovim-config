require('keys/helper')

-- telescope
local tb = require('telescope.builtin')
nm('<leader>ff', tb.find_files)
nm('<leader>fg', tb.live_grep)
nm('<leader>fb', tb.buffers)
nm('<leader>fh', tb.help_tags)

