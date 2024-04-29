return {
  -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        component_seperators = {
          left = "",
          right = "",
        },
        section_seperators = {
          left = "",
          right = "",
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress", "location" },
        lualine_z = { "os.date('%H:%M')" },
      },
    })
  end,
}
