-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

cmp.setup({
    preselect = 'item',
    completion = {
        --completeopt = 'menu,menuone,noinsert'
    },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  },
    window = {
    --completion = cmp.config.window.bordered(),
    --documentation = cmp.config.window.bordered(),

  },
    formatting = {
    fields = {'abbr', 'kind', 'menu'},
    format = require('lspkind').cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
    })
  }
})
