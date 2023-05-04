--local status, nvim_lsp = pcall(require, "lspconfig")
--if not status then
--	return
--end

vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'emmet_ls',
  'lua_ls',
  -- 'sumneko_lua',
  'pyright',
  'bashls',
  'cssls',
  'eslint',
  'html',
  'jsonls',
  'tsserver',
  'yamlls'
})

lsp.nvim_workspace()

lsp.set_sign_icons({
  --error = '✘',
  warn = '▲',
  --hint = '⚑',
  info = '»'
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
  },
  mapping = {
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})


lsp.setup()

