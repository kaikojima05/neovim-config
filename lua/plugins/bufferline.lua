return {
  {
    "akinsho/bufferline.nvim",
    depends = { "kyazdani42/nvim-web-devicons" },
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "tabs",
          separator_style = "slant",
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
        fill = {
          guibg = "#181c24",
        },
      })
    end, -- end,
  },
}
