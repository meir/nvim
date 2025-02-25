local current = require("human.plugins.images.random_cats")

local function turn_square(logo)
  logo = vim.split(logo, "\n")
  local longest_line = 0
  for _, line in ipairs(logo) do
    if #line > longest_line then
      longest_line = #line
    end
  end

  -- add spaces to the end of each line until theyre as long as the longest line
  for i, line in ipairs(logo) do
    logo[i] = line .. string.rep(" ", longest_line - #line)
  end
  return vim.fn.join(logo, "\n")
end

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = " ", action = ":ene", desc = "New buffer", key = "n" },
          { icon = " ", action = ":Telescope find_files", desc = "Find files", key = "f" },
          { icon = "󰒲 ", action = ":Lazy", desc = "Lazy dashboard", key = "l" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = string.rep("\n", 8) .. turn_square(current) .. "\n\n",
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 1 },
        { section = "startup" },
        -- {
        --   section = "terminal",
        --   cmd = "pokemon-colorscripts -r ; sleep .1",
        --   random = 10,
        --   pane = 2,
        --   indent = 4,
        --   height = 30,
        -- },
      },
    },
    quickfile = { enabled = true, exclude = { "latex" } },
    dim = {
      animate = {
        enabled = false,
      },
    },
  },
  init = function()
    local Snacks = require("snacks")
    Snacks.dim.enable()
    vim.g.snacks_animate = false
  end,
}
