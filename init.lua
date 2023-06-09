require("settings")
require("plugins")
require("maps")
require("configs.gruvbox")
--require("configs.nvimtree")
require("configs.tmux")
--require("configs.nerdtree")
require("configs.toggleterm")
require("configs.lualine")
require("configs.colorizer")
require("configs.gitsigns")
--require("configs.coc")
require("configs.telescope")
require("configs.mason")
--require("configs.bufferline")
require("configs.lsp")
--require("configs.minimallsp")
require("configs.treesitter")
require("configs.democmp")
require("configs.autopairs")
--require("configs.cmp")

local themeStatus, gruvbox = pcall(require, "gruvbox")

if themeStatus then
    vim.cmd("colorscheme gruvbox")
else
    return
end
