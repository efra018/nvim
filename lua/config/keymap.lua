vim.g.mapleader = " "
local keymap = vim.keymap

-- Actualizar archivo
keymap.set("n", "<leader>so", "<CMD>:source %<CR>")

-- Quitar seleccion
keymap.set("n", "<leader>nh", "<CMD>:noh<CR>")

-- Guardar
keymap.set("n", "<C-s>", "<CMD>:w<CR>")

-- Salir
keymap.set("n", "<C-w>", "<CMD>:q<CR>")

-- Salir y guardar
keymap.set("n", "<leader>x", "<CMD>:x<CR>")

-- Mover entre buffers
keymap.set("n", "<TAB>", "<CMD>:bnext<CR>")
keymap.set("n", "<S-TAB>", "<CMD>:bprevious<CR>")

-- Cerrar buffers
keymap.set("n", "cl", "<CMD>:bdelete<CR>")

-- NvimTree
--keymap.set("n", "<leader>nt", "<cmd>NvimTreeToggle<cr>")

-- Tabulacion
keymap.set("v", ">", ">gv", { desc = "after tab in re-select the same" })
keymap.set("v", "<", "<gv", { desc = "after tab out re-select the same" })

-- Ver restultados en medio
--keymap.set("n", "n", "nzzzv", { desc = "Goes to the next result on the seach and put the cursor in the middle" })
--keymap.set("n", "N", "Nzzzv", { desc = "Goes to the prev result on the seach and put the cursor in the middle" })
