return {
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
      require("lsp_signature").setup({
        hint_enable = false,
      })
    end,
  },
}
