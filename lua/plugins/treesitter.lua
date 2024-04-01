---@diagnostic disable: missing-fields
return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- event = { "BufReadPre", "BufNewFile" },
		event = { "VeryLazy" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
			"axelvc/template-string.nvim",
			--"nvim-treesitter/nvim-treesitter-context",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					--"python",
					--"tsx",
					"lua",
					"vim",
					"dart",
					--"typescript",
					"javascript",
					"html",
					"css",
					"json",
					--"graphql",
					--"regex",
					--"rust",
					--"prisma",
					"markdown",
					"markdown_inline",
				},

				sync_install = false,

				auto_install = true,

				highlight = {
					enable = true,

					--additional_vim_regex_highlighting = false,
				},
				autotag = {
					enable = true,
				},
				indent = {
					enable = true,
				},
				--incremental_selection = {
				--	enable = true,
				--	keymaps = {
				--		init_selection = "<enter>",
				--		node_incremental = "<enter>",
				--		scope_incremental = false,
				--		node_decremental = "<bs>",
				--	},
				--},
			})

			require("template-string").setup({})
		end,
	},
}
