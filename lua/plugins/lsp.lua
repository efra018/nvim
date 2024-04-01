return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason.nvim",
		"folke/neodev.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

		local signs = {
			Error = "",
			Warn = "",
			Hint = "",
			Info = "",
		}
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end

		local on_attach = function(_, bufnr)
			vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
			local opts = { buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			--vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", "<S-k>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
			vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
			vim.keymap.set("n", "<space>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, opts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "<space>f", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
		end
		require("neodev").setup()
		require("lspconfig").lua_ls.setup({
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = { globals = "vim" },
					telemetry = { enable = false },
					workspace = { checkThirdParty = false },
				},
			},
		})
		--require("lspconfig").dartls.setup({
		--	dart_path = { "C:/flutter/bin/dart-sdk/bin/dart.exe" },
		--	cmd = { "dart", "dartls", "--protocol=lsp" },
		--	filetypes = { "dart" },
		--})
		--require("lspconfig").pyright.setup({
		--	on_attach = on_attach,
		--	settings = {
		--		pyright = {
		--			autoImportCompletions = true,
		--		},
		--		python = {
		--			analysis = {
		--				autoSearchPaths = true,
		--				diagnosticMode = "openFilesOnly",
		--				useLibraryCodeForTypes = true,
		--				typeCheckingMode = "off",
		--			},
		--		},
		--	},
		--})
		vim.diagnostic.config({
			underline = true,
			virtual_text = true,
			update_in_insert = true,
			--virtual_text = {
			--	source = "if_many", -- Or "if_many"
			--	prefix = "●", -- Could be '■', '▎', 'x'
			--},
			severity_sort = true,
			float = {
				style = "minimal",
				border = "rounded",
				source = "always", -- Or "if_many"
			},
		})
	end,
}
