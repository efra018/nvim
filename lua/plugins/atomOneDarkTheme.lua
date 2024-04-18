return {
	"navarasu/onedark.nvim",
	config = function()
		-- Lua
		require("onedark").setup({
			style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		})
		require("onedark").load()
	end,
}
