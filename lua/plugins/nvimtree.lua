return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>nt", api.tree.toggle)

		local function my_on_attach(bufnr)
			local function opts(desc)
				return {
					desc = "nvim-tree: " .. desc,
					buffer = bufnr,
					noremap = true,
					silent = true,
					nowait = true,
				}
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			--vim.keymap.set("n", "<leader>nt", api.tree.toggle, opts("Toggle"))
			--vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
			vim.keymap.set("n", "<C-u>", api.tree.change_root_to_parent, opts("Up"))
			vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
		end

		require("nvim-tree").setup({
			on_attach = my_on_attach,
			--filters = {
			--  custom = {"^.git$"},
			--},
			--actions = {
			--	open_file = {
			--		quit_on_open = false,
			--		window_picker = {
			--			enable = false,
			--		},
			--	},
			--},
			update_focused_file = {
				enable = true,
				--update_cwd = true,
			},
			git = {
				enable = false,
				--ignore = true,
				--timeout = 500,
			},
			renderer = {
				full_name = true,
				indent_width = 2,
				indent_markers = {
					enable = true,
				},
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			log = {
				enable = true,
				types = {
					diagnostics = true,
				},
			},
		})
	end,
}
