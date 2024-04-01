return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		--local dap = require("dap")

		--dap.adapters.dart = {
		--	type = "executable",
		--	command = "dart",
		--	args = { "debug_adapter" },
		--}

		--dap.adapters.flutter = {
		--	type = "archive",
		--	command = "flutter",
		--	args = { "debug_adapter" },
		--}
		--dap.configurations.dart = {
		--	{
		--		type = "dart",
		--		request = "launch",
		--		name = "Launch dart",
		--		dartSdkPath = "C:/flutter/bin/flutter.bat", -- ensure this is correct
		--		flutterSdkPath = "C:/flutter/bin/flutter.bat", -- ensure this is correct
		--		program = "C:/flutter/bin/flutter.bat", -- ensure this is correct
		--		-- program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
		--		cwd = "${workspaceFolder}",
		--	},
		--	{
		--		type = "flutter",
		--		request = "launch",
		--		name = "Launch flutter",
		--		dartSdkPath = "C:/flutter/bin/flutter.bat", -- ensure this is correct
		--		flutterSdkPath = "C:/flutter/bin/flutter.bat", -- ensure this is correct
		--		program = "C:/flutter/bin/flutter.bat", -- ensure this is correct
		--		cwd = "${workspaceFolder}",
		--	},
		--}

		require("mason").setup({
			PATH = "prepend",
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"lua-language-server",
				"stylua",
				--"pyright",
				--"eslint_d",
				--"prettierd",
				--"rust-analyzer",
				--"graphql-language-service-cli",
				--"prisma-language-server",
			},
		})
	end,
}
