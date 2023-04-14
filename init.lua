require("settings")
require("plugins")
require("maps")
require("configs.gruvbox")

local themeStatus, gruvbox = pcall(require, "gruvbox")

if themeStatus then
    vim.cmd("colorscheme gruvbox")
else
    return
end
