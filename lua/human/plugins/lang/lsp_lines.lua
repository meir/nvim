return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      })
    end,
  },
  {
    -- lsp_lines is a simple neovim plugin that renders diagnostics using virtual lines on top of the real line of code
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup({
        diagnostics = {
          virtual_text = false,
        },
      })
    end,
  },
}
