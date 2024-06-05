-- Keymaps are automatically loaded on the VeryLazy event

-- leader key
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- mode insert
keymap.set("i", "jj", "<ESC>", { silent = true })
keymap.set("i", "kk", "<ESC>la", {})
keymap.set("i", ",", ",<Space>", {})

-- mode normal
keymap.set("n", "<Space>h", "^", {})
keymap.set("n", "<Space>l", "$", {})
keymap.set("n", "dh", "d0", {})
keymap.set("n", "dl", "d$", {})
keymap.set("n", "nd", ":Explore<CR>", {})
keymap.set("n", "vv", ":vsp<CR>", {})
keymap.set("n", "vh", "<C-w>h", {})
keymap.set("n", "vl", "<C-w>l", {})
keymap.set("n", ";d", '"_d', {})
keymap.set("n", ";dd", '"_dd', {})
keymap.set("n", ";dw", '"_dw', {})
keymap.set("n", ";dl", '"_dl', {})
keymap.set("n", "le", "b", {})
keymap.set("n", "<leader>j", "20j", {})
keymap.set("n", "<leader>k", "20k", {})

-- mode visual
keymap.set("v", ";d", '"_d', {})
keymap.set("v", ";dd", '"_dd', {})

-- resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- new tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)

-- lsp
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
keymap.set("n", "lf", "<cmd>Lspsaga lsp_finder<CR>")
keymap.set("n", "rk", "<cmd>Lspsaga peek_definition<CR>")
keymap.set("n", "ga", "<cmd>Lspsaga code_action<CR>")
keymap.set("n", "gn", "<cmd>Lspsaga rename<CR>")
keymap.set("n", "ge", "<cmd>Lspsaga show_line_diagnostics<CR>")
keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap.set(
  "n",
  "E",
  "<cmd>lua vim.diagnostic.goto_prev({severity = { min = vim.diagnostic.severity.ERROR, max = vim.diagnostic.severity.ERROR }})<CR>",
  { noremap = true, silent = true }
)
keymap.set(
  "n",
  "W",
  "<cmd>lua vim.diagnostic.goto_prev({severity = { min = vim.diagnostic.severity.WARNING, max = vim.diagnostic.severity.WARNING }})<CR>",
  { noremap = true, silent = true }
)

-- replace
vim.api.nvim_set_keymap("n", "*", ":keepjumps normal! mi*`i<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vy", "cgn", { noremap = true, silent = true })

-- toggle fold
vim.api.nvim_set_keymap("n", "<C-]>", "za", { noremap = true, silent = true })
