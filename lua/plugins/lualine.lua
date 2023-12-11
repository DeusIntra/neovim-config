local _options = {
--    icons_enabled = true,
--    theme = 'auto',
    theme = 'auto',
--    component_separators = { left = '', right = ''},
--    section_separators = { left = '', right = ''},
--    disabled_filetypes = {
--      statusline = {},
--      winbar = {},
--    },
--    ignore_focus = {},
--    always_divide_middle = true,
--    globalstatus = false,
--    refresh = {
--      statusline = 1000,
--      tabline = 1000,
--      winbar = 1000,
--    }
}

local _sections = {
--    lualine_a = {'mode'},
--    lualine_b = {'branch', 'diff', 'diagnostics'},
--    lualine_c = {'filename'},
    lualine_c = {},
--    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_x = {'encoding', 'filetype'},
--    lualine_y = {'progress'},
    lualine_y = {},
--    lualine_z = {'location'}
    lualine_z = {'location', 'progress'}
}

local _inactive_sections = {
--    lualine_a = {},
--    lualine_b = {},
--    lualine_c = {'filename'},
--    lualine_x = {'location'},
--    lualine_y = {},
--    lualine_z = {}
}

local _tabline = {}
local _winbar = {}
local _inactive_winbar = {}
local _extensions = {}


require('lualine').setup({
     options = _options,
     sections = _sections,
     inactive_sections = inactive_sections,
     tabline = _tabline,
     winbar = _winbar,
     inactive_winbar = _inactive_winbar,
     extensions = _extentions
})

