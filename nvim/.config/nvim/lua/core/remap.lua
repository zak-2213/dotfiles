vim.api.nvim_set_keymap("n", "<C-e>", "<C-e>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-y>", "<C-y>", { noremap = true })

vim.keymap.set("n", "<C-q>", vim.cmd.Ex)
vim.keymap.set("n", "<C-Tab>", ":set wrap!<CR>")
vim.keymap.set("n", "<C-k>", vim.cmd.vsplit)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<C-a>", "gg<S-v>G")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<C-/>", "I//<Esc>")
vim.keymap.set("n", "<C-3>", "I#<Esc>")
vim.keymap.set("v", "<C-/>", "_<C-v>I//")

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("i", "<C-BS>", "<Esc>dbs", { noremap = true })

--vim.api.nvim_set_keymap('i', '"""', '"""<left><left><left>', { noremap = true })
--vim.api.nvim_set_keymap('i', "'''", "'''<left><left><left>", { noremap = true })
vim.api.nvim_set_keymap("i", "{", "{}<left>", { noremap = true })
--vim.api.nvim_set_keymap('i', '(', '()<left>', { noremap = true })
--vim.api.nvim_set_keymap('i', '[', '[]<left>', { noremap = true })
