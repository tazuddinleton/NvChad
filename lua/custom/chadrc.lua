---@type ChadrcConfig 
local M = {}
local opt = vim.opt
M.ui = {
    theme = 'catppuccin',
    telescope = {style = 'bordered'}
}
M.plugins = 'custom.plugins'
M.mappings = require('custom.mappings')

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
return M
