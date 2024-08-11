---@type ChadrcConfig
require('custom.remap')
local M = {}

M.ui = { theme = 'kanagawa' }
M.plugins = 'custom.plugins'

vim.opt.relativenumber = true
return M
