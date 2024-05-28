if vim.g.vscode then
  vim.api.nvim_set_option("clipboard", "unnamedplus")
  vim.api.nvim_set_keymap("n", "di", 'di"', { noremap = true })
  vim.api.nvim_set_keymap("n", "di", "di{", { noremap = true })
  vim.api.nvim_set_keymap("n", "di", "di[", { noremap = true })
  vim.api.nvim_set_keymap("i", "<C-k>", "<ESC>la", {})
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
