return {
	"lukas-reineke/indent-blankline.nvim",
	event = "VeryLazy",
	main = "ibl",
	opts = {
		enabled = true,
		indent = {
			char = "|",
		},
	},

	config = function()
		require("ibl").setup()
	end,
}
