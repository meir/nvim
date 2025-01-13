return {
  "dundalek/lazy-lsp.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "TamaMcGlinn/nvim-lspconfig-ada",
  },
  config = function()
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = true,
    })
    require("lazy-lsp").setup {}
  end
}
