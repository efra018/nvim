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
    

    -- Theme
    use ({
        'ellisonleao/gruvbox.nvim',
        config = function()
            require("configs.gruvbox")
        end,
    })

    -- Tree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
      config = function()
        require("nvim-tree").setup {}
      end
    }

    -- Tmux Navigation
    use 'alexghergh/nvim-tmux-navigation'
    
    -- Terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
      end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Status Line
    use 'nvim-lualine/lualine.nvim'

    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Neoclide COC
    use {'neoclide/coc.nvim', branch = 'release'}

    -- LSP
    --use 'neovim/nvim-lspconfig'

    -- Mason: Portable package manager
	--use({
	--	"williamboman/mason.nvim",
	--	config = function()
	--		require("mason").setup()
	--	end,
	--})

	--use({
	--	"williamboman/mason-lspconfig.nvim",
	--	--config = function()
	--	--	require("slydragonn.configs.mason-lsp")
	--	--end,
	--	after = "mason.nvim",
	--})

    -- Treesitter
	--use({
	--	"nvim-treesitter/nvim-treesitter",
	--	run = function()
	--		require("nvim-treesitter.install").update({ with_sync = true })
	--	end,
	--	--config = function()
	--	--	require("slydragonn.configs.treesitter")
	--	--end,
	--})



    -- File manager
	--use({
	--	"nvim-neo-tree/neo-tree.nvim",
	--	branch = "v2.x",
	--	requires = {
	--		"nvim-lua/plenary.nvim",
	--		"nvim-tree/nvim-web-devicons",
	--		"MunifTanjim/nui.nvim",
	--	},
	--})
    --
end)
