return {
	"tpope/vim-fugitive",
	cmd = { "G", "Git" },
	keys = {
		{ "<leader>ga", ":Git fetch --all <CR>", desc = "Git fetch" },
		{ "<leader>gl", ":Git pull <CR>", desc = "Git pull" },
	},
}
