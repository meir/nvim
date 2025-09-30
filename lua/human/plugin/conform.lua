return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 500,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "gofmt" },
      rust = { "rustfmt" },
      javascript = { "prettier" },
      python = { "black" },
      typescript = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      html = { "prettier" },
      markdown = { "prettier" },
      cpp = { "clang_format" },
    },
  },
}
