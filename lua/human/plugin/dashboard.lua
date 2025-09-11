return {
  "nvimdev/dashboard-nvim",
  dependencies = { { "echasnovski/mini.icons" } },
  opts = {
    theme = "doom",
    config = {
      header = vim.split(require("human.command.get_random_cat").get_cat(), "\n"),
      center = {
        { icon = " ", action = ":ene", desc = "New buffer", key = "n" },
        { icon = " ", action = ":FzfLua files", desc = "Find files", key = "f" },
        { icon = "󰒲 ", action = ":Lazy", desc = "Lazy dashboard", key = "l" },
        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
      },
      vertical_center = true,
    },
  },
}
