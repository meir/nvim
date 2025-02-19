return {
  -- Focus on one function at a time
  "folke/twilight.nvim",
  config = function ()
    local twilight = require("twilight")
    twilight.setup({
      -- go
      "function_declaration",
      "method_declaration",
      "func_literal",

      -- typescript
      "class_declaration",
      "method_definition",
      "arrow_function",
      "function_declaration",
      "generator_function_declaration",
    })
    twilight.enable()
  end
}
