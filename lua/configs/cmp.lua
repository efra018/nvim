-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
         require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
        completion = cmp.config.window.bordered({ border = "single"}),
        documentation = cmp.config.window.bordered({ border = "single"}),
    --documentation = {
    --  max_height = 1000,
    --  max_width = 100,
    --    }
    },
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    --mapping = cmp.mapping.preset.insert({
    --  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    --  ['<C-f>'] = cmp.mapping.scroll_docs(4),
    --  ['<C-Space>'] = cmp.mapping.complete(),
    --  ['<C-e>'] = cmp.mapping.abort(),
    --  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    --}),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      --{ name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })



  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })


--cmp.setup({
--    preselect = 'item',
--    completion = {
--        completeopt = 'menu,menuone,noinsert'
--    },
--  mapping = {
--    ['<CR>'] = cmp.mapping.confirm({select = false}),
--  },
--  --  window = {
--  --  --completion = cmp.config.window.bordered(),
--  --  documentation = cmp.config.window.bordered(),
--
--  --},
--    formatting = {
--    fields = {'abbr', 'kind', 'menu'},
--    format = require('lspkind').cmp_format({
--      mode = 'symbol', -- show only symbol annotations
--      --maxwidth = 50, -- prevent the popup from showing more than provided characters
--      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
--    })
--  }
--})
