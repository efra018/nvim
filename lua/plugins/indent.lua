return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufReadPost", "BufNewfile" },
	config = function()
		require("ibl").setup({
			indent = { char = "▏" },
			--indent = { char = "│" },
		})
	end,
	-- opts = {
	--   indent = {
	--     char = '⎸'
	--   },
	--   -- char = '⎸',
	--   show_trailing_blankline_indent = false,
	--   show_first_indent_level = false,
	--   show_current_context = false
	-- },
	-- config = function()
	--   require("ibl").setup()
	-- end
}
