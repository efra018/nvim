return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
		"rcarriga/nvim-dap-ui",
		"leoluz/nvim-dap-go",
		"mxsdev/nvim-dap-vscode-js",
		"anuvyklack/hydra.nvim",
		"nvim-telescope/telescope-dap.nvim",
		"rcarriga/cmp-dap",
		"nvim-neotest/nvim-nio",
	},
	keys = { { "<leader>d", desc = "Open Debug menu" } },
	config = function()
		local dap = require("dap")
		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}
		require("efra.dap")
		-- vim.api.nvim_set_keymap(
		-- 	"n",
		-- 	"<F5>",
		-- 	'<cmd>lua require("dap").continue()<CR>',
		-- 	{ noremap = true, silent = true }
		-- )
		-- local ok_telescope, telescope = pcall(require, "telescope")
		-- if ok_telescope then
		-- 	telescope.load_extension("dap")
		-- end
		--
		local ok_cmp, cmp = pcall(require, "cmp")
		if ok_cmp then
			cmp.setup.filetype({ "dap-repl", "dapui_watches" }, {
				sources = cmp.config.sources({
					{ name = "dap" },
				}, {
					{ name = "buffer" },
				}),
			})
		end
	end,
}
