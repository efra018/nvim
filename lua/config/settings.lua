local opt = vim.opt

opt.signcolumn = "yes"
opt.number = true
opt.relativenumber = true

opt.syntax:append("on")
opt.showcmd = true
opt.ruler = true
opt.encoding = "UTF-8"
opt.scrolloff = 5
opt.sidescrolloff = 5
opt.title = true
opt.hidden = true

opt.mouse:append("a")
opt.clipboard:append("unnamedplus")

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.cursorline = true
opt.termguicolors = true
