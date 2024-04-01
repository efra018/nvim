return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	-- lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
			},
			-- FOR LINUX
			--"nvim-telescope/telescope-fzf-native.nvim",
			--build = "make",
		},
	},
	keys = {

		-- KEY GIT
		{
			"<leader>pp",
			function()
				require("telescope.builtin").git_files({ show_untracked = true })
			end,
			desc = "Telescope Git Files",
		},
		{
			"<leader>gs",
			function()
				require("telescope.builtin").git_status()
			end,
			desc = "Telescope Git status",
		},
		{
			"<leader>gc",
			function()
				require("telescope.builtin").git_commits()
			end,
			desc = "Telescope Git status",
		},
		{
			"<leader>gb",
			function()
				require("telescope.builtin").git_branches()
			end,
			desc = "Telescope Git branches",
		},

		-- KEY TELESCOPE
		{
			"<leader>pe",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Telescope buffers",
		},
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope Find Files",
		},
		{
			"<leader>ph",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Telescope Help",
		},
		{
			"<leader>ll",
			function()
				require("telescope.builtin").lsp_references()
			end,
			desc = "Telescope References",
		},
		{
			"<leader>gp",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Telescope Rip Grep",
		},
		{
			"<leader>bb",
			function()
				require("telescope").extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
			end,
			desc = "Telescope file browser",
		},
		dynamic_preview_title = true,
		--path_display = { "smart" },
	},
	config = function()
		--local builtin = require("telescope.builtin")
		--local keymap = vim.keymap

		-- KEYS FILES
		--keymap.set("n", "<leader>ff", builtin.find_files, {})
		--keymap.set("n", "<leader>gp", builtin.live_grep, {})
		--keymap.set("n", "<leader>pe", builtin.buffers, {})
		--keymap.set("n", "<leader>ph", builtin.help_tags, {})

		-- KEYS GIT
		--keymap.set("n", "<leader>pp", builtin.git_files, { show_untracked = true })
		--keymap.set("n", "<leader>gp", builtin.git_status, {})
		--keymap.set("n", "<leader>pe", builtin.git_commits, {})
		--keymap.set("n", "<leader>ph", builtin.git_branches, {})

		--local actions = require("telescope.actions")
		require("telescope").load_extension("fzf")
		require("telescope").setup({
			defaults = {
				--mappings = {
				--	i = {
				--		["esc"] = actions.close,
				--	},
				--},
				file_ignore_patterns = {
					"codegen.ts",
					".git",
					"lazy-lock.json",
					"*-lock.yaml",
					"node_modules",
					"%.lock",
					"schema.gql",
				},
				dynamic_preview_title = true,
				--path_display = { "smart" },
			},
			pickers = {
				find_files = {
					hidden = true,
				},
			},
			--layout_config = {
			--	horizontal = {
			--		preview_cutoff = 100,
			--		preview_width = 0.5,
			--	},
			--},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		})
	end,
}
