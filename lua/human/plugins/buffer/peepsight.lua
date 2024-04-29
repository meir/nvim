return {
  -- Focus on one function at a time
  "koenverburg/peepsight.nvim",
  config = function()
    local peepsight = require("peepsight")
    peepsight.setup({
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

    peepsight.enable()
  end,
}
