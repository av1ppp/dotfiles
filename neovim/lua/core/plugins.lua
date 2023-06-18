local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "phaazon/hop.nvim" },

	-- NeoTree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},

	-- TreeSitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- LSP
	{ "neovim/nvim-lspconfig" },

	-- Themes
	{ "doums/darcula" },

	-- Autocomplete
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },

	-- Mason
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
	},

	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"linrongbin16/lsp-progress.nvim",
		},
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Formatting
	{ "jose-elias-alvarez/null-ls.nvim" },

	{ "onsails/lspkind-nvim" },

	-- Comments
	{ "numToStr/Comment.nvim" },

	-- Autopairs
	{ "windwp/nvim-autopairs" },

	-- Bufferline
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Toggleterm
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},

	-- Dashboard
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},

	-- Emmet
	{ "mattn/emmet-vim" },

	-- Snippets
	{ "dcampos/nvim-snippy" },
	{ "dcampos/cmp-snippy" },

	-- Key helper
	{
		"folke/which-key.nvim",
		-- event = "VeryLazy",
		-- init = function()
		-- 	vim.o.timeout = true
		-- 	vim.o.timeoutlen = 300
		-- end,
	},
})
