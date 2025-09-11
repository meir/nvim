local sections = {
  lualine_a = { "mode" },
  lualine_b = {
    {
      "diagnostics",
      symbols = {
        error = "  ",
        warn = "  ",
        info = "  ",
        hint = " ",
      },
    },
    function()
      return vim.fn.expand("%:.")
    end,
    "filesize",
  },
  lualine_c = { "branch", "diff" },

  lualine_x = { "encoding", "fileformat", "filetype" },
  lualine_y = { "progress", "location" },
  lualine_z = { "os.date('%H:%M')" },
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  event = "VeryLazy",
  opts = {
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    sections = sections,
    inactive_sections = sections,
  },
}
