local cat_bug = require("ui.dashboard.images.cat_w_bug")

local current = cat_bug

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
