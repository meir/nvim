return {
  {
    -- Color picker and highlighter plugin for Neovim.
    "uga-rosa/ccc.nvim",
    config = function()
      local ccc = require("ccc")

      ccc.setup({
        highlighter = {
          auto_enable = true,
        },
      })
    end,
  },
  {
    -- A Neovim plugin to add vscode-style TailwindCSS completion to nvim-cmp
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      local twc = require("tailwindcss-colorizer-cmp")
      local cmp = require("cmp")

      twc.setup({
        color_square_width = 2,
      })

      cmp.config.formatting = {
        format = twc.formatter,
      }
    end,
  },
}
