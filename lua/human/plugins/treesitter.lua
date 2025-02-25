return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "bash",
          "vim",
          "vimdoc",
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
          "go",
        },
        auto_install = true,
        highlight = {
          enable = true,
        },
      })
    end,
  },
}
