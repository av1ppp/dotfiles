local wk = require("which-key")

vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree float focus<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Snippy
local snippy_mappings = require("snippy.mapping")
vim.keymap.set("i", "<Tab>", snippy_mappings.expand_or_advance("<Tab>"))
vim.keymap.set("s", "<Tab>", snippy_mappings.next("<Tab>"))
vim.keymap.set({ "i", "s" }, "<S-Tab>", snippy_mappings.previous("<S-Tab>"))

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "-", ":split<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>xb", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>xc", ":bd<CR>")
vim.keymap.set("n", "<leader>xp", ":BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>xn", ":BufferLineCloseRight<CR>")
wk.register({
	x = {
		name = "Close Buffer",
		b = { "Pick Buffer" },
		c = { "Current Buffer" },
		p = { "Prev Tab" },
		n = { "Next Tab" },
	},
}, { prefix = "<leader>" })

-- Terminal
vim.keymap.set("n", "<f7>", "<cmd>ToggleTerm direction=float<CR>")
vim.keymap.set("t", "<f7>", "<cmd>ToggleTerm direction=float<CR>")

-- Other
vim.keymap.set("i", "jj", "<Esc>")

-- Search
vim.keymap.set("n", "<f3>", ":noh <CR>")
