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
        completion = cmp.config.window.bordered({ border = "simple" }),
        documentation = cmp.config.window.bordered({ border = "simple" }),

    },
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
    },
    formatting = {
        fields = {'abbr', 'kind', 'menu'},
        --format = require('lspkind').cmp_format({
        --  mode = 'symbol', -- show only symbol annotations
        --  maxwidth = 50, -- prevent the popup from showing more than provided characters
        --  ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
        --})
    }
})
