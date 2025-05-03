require("venv-selector").setup({
	-- Your options go here
	name = "venv",
	search_workspace = true,
	stay_on_this_version = true,
	search = true,
	notify_user_on_activate = true,
	dap_enabled = true,
	parents = 3,
	auto_refresh = false,
})

vim.keymap.set("n", "<leader>vs", vim.cmd.VenvSelect)
vim.keymap.set("n", "<leader>vc", vim.cmd.VenvSelectCached)
