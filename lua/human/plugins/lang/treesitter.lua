return {
  {
    -- Nvim Treesitter configurations and abstraction layer
    "nvim-treesitter/nvim-treesitter",
    config = function()
      local ts_config = require("nvim-treesitter.configs")
      require("nvim-treesitter.install").compilers = { "gcc-12" }
      ts_config.setup({
        ensure_installed = {
          "bash",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "regex",
          "typescript",
          "yaml",
          "tsx",
          "typescript",
          "go",
        },
        highlight = {
          enable = true,
        },
      })
    end,
  },
}
