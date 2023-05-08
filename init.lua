require("settings")
require("plugins")
require("maps")
require("configs.gruvbox")
require("configs.nvimtree")
require("configs.tmux")
--require("configs.nerdtree")
require("configs.toggleterm")
require("configs.lualine")
require("configs.gitsigns")
--require("configs.coc")
require("configs.telescope")
--require("configs.bufferline")
require("configs.lsp")
require("configs.treesitter")
require("configs.democmp")
--require("configs.cmp")

local themeStatus, gruvbox = pcall(require, "gruvbox")

if themeStatus then
    vim.cmd("colorscheme gruvbox")
else
    return
end
