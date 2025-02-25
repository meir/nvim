return {
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          go = { "goimports", "gofmt" },
          python = { "black" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          typescriptreact = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          markdown = { "prettier" },
          rust = { "rustfmt" },
          sh = { "shfmt" },
          html = { "prettier" },
          css = { "prettier" },
          scss = { "prettier" },
          less = { "prettier" },
          graphql = { "prettier" },
          vue = { "prettier" },
          svelte = { "prettier" },
          ruby = { "rufo" },
          java = { "google-java-format" },
          kotlin = { "ktlint" },
          nix = { "nixfmt" },
          c = { "clang-format" },
          cpp = { "clang-format" },
          h = { "clang-format" },
          hpp = { "clang-format" },
        },
        format_on_save = true,
      })
    end,
  },
}
