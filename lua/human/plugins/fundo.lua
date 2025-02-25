return {
  -- Forever undo in Neovim
  "kevinhwang91/nvim-fundo",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  config = function()
    local fundo = require("fundo")
    fundo.install()
    vim.o.undofile = true
    fundo.setup()
  end,
}
