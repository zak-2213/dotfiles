local function arduino_status()
	if vim.bo.filetype ~= "arduino" then
		return ""
	end
	local port = vim.fn["arduino#GetPort"]()
	local line = string.format("[%s]", vim.g.arduino_board)
	if vim.g.arduino_programmer ~= "" then
		line = line .. string.format(" [%s]", vim.g.arduino_programmer)
	end
	if port ~= 0 then
		line = line .. string.format(" (%s:%s)", port, vim.g.arduino_serial_baud)
	end
	return line
end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "gruvbox-material",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		always_show_tabline = true,
		globalstatus = false,
		refresh = {
			statusline = 100,
			tabline = 100,
			winbar = 100,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype", arduino_status },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
