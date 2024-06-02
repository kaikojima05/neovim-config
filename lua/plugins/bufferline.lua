return {
  {
    "akinsho/bufferline.nvim",
    depends = { "kyazdani42/nvim-web-devicons" },
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "buffer",
        separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
    config = function()
      local highlights = require("nord").bufferline.highlights({
        italic = true,
        bold = true,
        fill = "#181c24",
      })

      require("bufferline").setup({
        highlights = highlights,
      })
    end,
  },
}
