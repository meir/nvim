local current = require("ui.dashboard.images.random_cats")

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

current = turn_square(current)

return {
  {
    -- vim dashboard
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = string.rep("\n", 8) .. current .. "\n\n"
      return {
        theme = "doom",
        config = {
          header = vim.split(logo, "\n"),
          center = {
            { action = "ene", desc = "New buffer", key = "n" },
            { action = "HarpoonFirst", desc = "Open last hook", key = "s" },
            { action = "Telescope find_files", desc = "Find files", key = "f" },
            { action = "Lazy", desc = "Lazy dashboard", key = "l" },
            { action = "q", desc = "Quit", key = "q" },
          },
        },
      }
    end,
  },
}
