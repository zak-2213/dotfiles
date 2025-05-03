local comment_symbols = {
	-- Hash comments
	py = "#",
	r = "#",
	rb = "#",
	pl = "#",
	sh = "#",
	bash = "#",
	zsh = "#",
	yaml = "#",
	yml = "#",
	toml = "#",
	conf = "#",
	cfg = "#",
	ini = "#",

	-- Dash comments
	lua = "--",
	sql = "--",
	hs = "--",

	-- HTML-style comments
	html = "<!-- ",
	htm = "<!-- ",
	xml = "<!-- ",
	svg = "<!-- ",

	-- Other specific formats
	vim = '"',
	vimrc = '"',
	tex = "%",
	m = "%", -- MATLAB/Octave
	lisp = ";;",
	clj = ";;",
	el = ";;", -- Emacs Lisp
	fpp = "@", -- F Prime
}

function CommentLine()
	-- Get filetype and determine comment symbol
	local filename = vim.fn.expand("%:t")
	local extension = vim.fn.fnamemodify(filename, ":e"):lower()
	local comment = comment_symbols[extension] or "//" -- Default to // if filetype not found

	-- Special case for HTML-like files to add closing tag
	if ft == "html" or ft == "xml" then
		vim.cmd("normal! I" .. comment)
		vim.cmd("normal! A -->")
		return
	end

	-- Insert the comment at the beginning of the line
	vim.cmd("normal! I" .. comment .. " ")
end

function CommentLines()
	-- Get file extension from the current buffer
	local filename = vim.fn.expand("%:t")
	local extension = vim.fn.fnamemodify(filename, ":e"):lower()

	-- Determine comment symbol, default to // if extension not found
	local comment = comment_symbols[extension] or "//"
	return comment
end

vim.api.nvim_set_keymap("n", "<C-e>", "<C-e>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-y>", "<C-y>", { noremap = true })

vim.keymap.set("n", "<C-q>", vim.cmd.Ex)
vim.keymap.set("n", "<C-Tab>", "<cmd>set wrap!<cr>")
vim.keymap.set("n", "<C-k>", vim.cmd.vsplit)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-z>", "<Esc>u")
vim.keymap.set("i", "<C-S-z>", "<Esc><C>r")

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

vim.keymap.set("n", "<leader>c", CommentLine)
vim.keymap.set("v", "<leader>c", function()
	local comment = CommentLines() .. " "
	-- Execute the visual mode commenting command
	return "_<C-v>I" .. comment
end, { expr = true })

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("i", "<C-BS>", "<Esc>dbs", { noremap = true })

--vim.api.nvim_set_keymap('i', '"""', '"""<left><left><left>', { noremap = true })
--vim.api.nvim_set_keymap('i', "'''", "'''<left><left><left>", { noremap = true })
vim.api.nvim_set_keymap("i", "{", "{}<left>", { noremap = true })
--vim.api.nvim_set_keymap('i', '(', '()<left>', { noremap = true })
--vim.api.nvim_set_keymap('i', '[', '[]<left>', { noremap = true })
