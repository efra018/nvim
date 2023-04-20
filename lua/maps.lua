local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, {silent = true})  
end

-- Save
map("n", "<C-s>", "<CMD>w<CR>")

-- Quit
map("n", "<C-w>", "<CMD>q<CR>")

-- Source
map("n", "<leader>so", "<CMD>:source %<CR>")

-- Mover entre buffers
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Cerrar buffers
map("n", "cl", "<CMD>bdelete<CR>")

-- NvimTree
map("n", "<leader>nt", "<cmd>NvimTreeToggle<cr>")
-- NERDTREE
--map("n", "<leader>nt", "<cmd>NERDTreeFind<CR>")

-- NeoTree
--map("n", "<leader>nt", "<CMD>NvimTreeToggle<CR>")
--map("n", "<leader>o", "<CMD>NvimTreeFocus<CR>")

-- Windows
--map("n", "<leader>ñ", "<CMD>vsplit<CR>")
--map("n", "<leader>p", "<CMD>split<CR>")
