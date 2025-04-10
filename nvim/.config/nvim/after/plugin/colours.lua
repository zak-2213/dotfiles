function SetColours(colour)
	colour = colour or "tokyonight"
	vim.cmd.colorscheme(colour)

	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "none" })
	vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
	vim.api.nvim_set_hl(0, "TabLineSelect", { bg = "none" })
end

SetColours()
