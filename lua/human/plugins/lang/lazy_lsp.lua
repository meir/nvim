return {
  "dundalek/lazy-lsp.nvim",
  dependencies = { "TamaMcGlinn/nvim-lspconfig-ada" },
  config = function()
    require("lazy-lsp").setup {}
  end
}
