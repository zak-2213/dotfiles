function SetColours(colour)
	colour = colour or "catppuccin-frappe"
	vim.cmd.colorscheme(colour)

	-- Clear background for all relevant highlight groups
	local groups = {
		"ColorColumn",
		"Conceal",
		"Cursor",
		"CursorIM",
		"CursorColumn",
		"CursorLine",
		"Directory",
		"DiffAdd",
		"DiffChange",
		"DiffDelete",
		"DiffText",
		"EndOfBuffer",
		--"ErrorMsg",
		"VertSplit",
		"Folded",
		"FoldColumn",
		"SignColumn",
		"IncSearch",
		"LineNr",
		"LineNrAbove",
		"LineNrBelow",
		"CursorLineNr",
		"MatchParen",
		"ModeMsg",
		"MoreMsg",
		"NonText",
		"Normal",
		"NormalFloat",
		"NormalNC",
		"Pmenu",
		"PmenuSel",
		"PmenuSbar",
		"PmenuThumb",
		"Question",
		"QuickFixLine",
		"Search",
		"SpecialKey",
		"SpellBad",
		"SpellCap",
		"SpellLocal",
		"SpellRare",
		"StatusLine",
		"StatusLineNC",
		"TabLine",
		"TabLineFill",
		"TabLineSel",
		"Terminal",
		"Title",
		--"Visual",
		"VisualNOS",
		"WarningMsg",
		"Whitespace",
		"WildMenu",
	}

	for _, group in ipairs(groups) do
		vim.api.nvim_set_hl(0, group, { bg = "none" })
	end

	-- Additional settings for better transparency
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
end

SetColours()
