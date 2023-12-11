--local map = vim.api.nvim_set_keymap
local map = vim.keymap.set

-- Key remap functions
function nm(key, command, opts)
    if opts == nil then opts = {noremap=true} end
    map('n', key, command, opts)
end

function im(key, command, opts)
    if opts == nil then opts = {noremap=true} end
    map('i', key, command, opts)
end

function vm(key, command, opts)
    if opts == nil then opts = {noremap=true} end
    map('v', key, command, opts)
end

function tm(key, command, opts)
    if opts == nil then opts = {noremap=true} end
    map('t', key, command, opts)
end

function xm(key, command, opts)
    if opts == nil then opts = {noremap=true} end
    map('x', key, command, opts)
end

function nxm(key, command, opts)
    if opts == nil then opts = {noremap=true} end
    map({'n', 'x'}, key, command, opts)
end
