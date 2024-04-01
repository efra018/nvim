---@diagnostic disable: missing-fields
return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		local notify = require("notify")
		-- this for transparency
		notify.setup({
			--background_colour = "#000000",
			-- background_colour = "NotifyBackground",
			fps = 60,
			icons = {
				DEBUG = "",
				ERROR = "",
				INFO = "",
				TRACE = "✎",
				WARN = "",
			},
			--level = 2,
			minimum_width = 20,
			render = "compact",
			stages = "fade",
			timeout = 4000,
			--top_down = true,
		})
		-- this overwrites the vim notify function
		vim.notify = notify.notify
	end,
}
