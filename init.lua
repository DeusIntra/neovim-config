-- emmet is dumb (needs to set its variables before initializing)
--require('plugins/emmet')

--[[ plugin manager ]]
require('plugins/lazy')

--[[ actual plugins ]]
--
-- cosmetics
require('plugins/lualine')
require('plugins/onedark')
require('plugins/treesitter')

-- lsp
-- require('plugins/mason')
require('plugins/lsp')
require('plugins/formatters')

-- navigation
require('plugins/telescope')
require('plugins/neogit')

--[[ base config ]]
--
require('/base/nums')
require('/base/tabs')
require('/base/search')
require('/base/other')
require('/base/providers')

--[[ key mappings ]]
--
require('/keys/main')
require('/keys/plugins')
