return {
  "dundalek/lazy-lsp.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  opts = {
    preferred_servers = {
      go = { "gopls" },
    },
  },
}
