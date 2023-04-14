require("settings")
require("plugins")
require("maps")
require("configs.gruvbox")
require("configs.nvimtree")
require("configs.tmux")
require("configs.toggleterm")
require("configs.lualine")

local themeStatus, gruvbox = pcall(require, "gruvbox")

if themeStatus then
    vim.cmd("colorscheme gruvbox")
else
    return
end
