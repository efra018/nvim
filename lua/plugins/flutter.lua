return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	cmd = { "Flutter" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = function()
		require("flutter-tools").setup({
			dart_path = "C:/flutter/bin/dart.bat",
			flutter_path = "C:/flutter/bin/flutter.bat",
			ui = {
				-- the border type to use for all floating windows, the same options/formats
				-- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
				border = "rounded",
				-- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
				-- please note that this option is eventually going to be deprecated and users will need to
				-- depend on plugins like `nvim-notify` instead.
				-- notification_style = "native" | "plugin",
				notification_style = "native",
			},
			decorations = {
				statusline = {
					-- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
					-- this will show the current version of the flutter app from the pubspec.yaml file
					app_version = false,
					-- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
					-- this will show the currently running device if an application was started with a specific
					-- device
					device = false,
					-- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
					-- this will show the currently selected project configuration
					project_config = false,
				},
			},
			widget_guides = {
				enabled = true,
			},
		})
	end,
}
