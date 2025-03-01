-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                            , branch = '0.1.x',
	})
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({ "mhartington/oceanic-next", as = "oceanic" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	use("lewis6991/gitsigns.nvim")
	use("scalameta/nvim-metals")
	use("nvim-lua/plenary.nvim")
	use("stevearc/conform.nvim")
	use("scottmckendry/cyberdream.nvim")
	use("tpope/vim-surround")
	use("stevearc/vim-arduino")
	use("vhda/verilog_systemverilog.vim")
	use("EdenEast/nightfox.nvim")
	use("folke/tokyonight.nvim")
	use("aliqyan-21/darkvoid.nvim")
	use({ "iamcco/markdown-preview.nvim" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use({
		"olimorris/codecompanion.nvim",
		config = function()
			require("codecompanion").setup()
		end,
	})
end)
