return {
  -- Focus on one function at a time
  "folke/twilight.nvim",
  config = function ()
    local twilight = require("twilight")
    twilight.setup({
      treesitter = false,
    })
    twilight.enable()
  end
}
