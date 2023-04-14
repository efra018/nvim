local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, {silent = true})  
end



-- Save
map("n", "<leader>w", "<CMD>update<CR>")


-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

map("n", "<leader>so", "<CMD>:source %<CR>")

--map("i", "<leader>q", "<CMD>q<CR>")
--

-- NeoTree
map("n", "<leader>nt", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<CMD>Neotree focus<CR>")

-- Windows
--map("n", "<leader>ñ", "<CMD>vsplit<CR>")
--map("n", "<leader>p", "<CMD>split<CR>")
