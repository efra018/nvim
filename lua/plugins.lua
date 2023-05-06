--vim.cmd [[packadd packer.nvim]]
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --
    use { 'michaelb/sniprun'}
    --use 'onsails/lspkind.nvim'

    -- Theme
    use ({'ellisonleao/gruvbox.nvim', config = function()
        require("configs.gruvbox")
        end,
    })

    -- Tmux Navigation
    use 'alexghergh/nvim-tmux-navigation'

    -- Terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
      end
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Status Line
    use 'nvim-lualine/lualine.nvim'

    --HighLight
    --use { 'm-demare/hlargs.nvim' }

    -- Bufferline
    --use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- TREE
    --use 'preservim/nerdtree'

    -- Git integrations
    use {'lewis6991/gitsigns.nvim', config = function()
            require('gitsigns').setup()
          end
    }

    use 'tpope/vim-fugitive'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use 'nvim-treesitter/nvim-treesitter-context'

    -- LSP
    --use 'neovim/nvim-lspconfig'

    use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}, config = function()
            require("nvim-tree").setup {}
        end
    }

    --LSP
    use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
    }
end)
