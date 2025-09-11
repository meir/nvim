return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { {
    "echasnovski/mini.icons",
    opts = {},
  } },
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
      "size",
    },
    float = {
      max_width = 70,
      max_height = 35,
    },
    use_default_keymaps = false,
    keymaps = {
      ["<CR>"] = "actions.select",
      ["<Backspace>"] = "actions.parent",
      ["<S-Backspace>"] = "actions.open_cwd",
      ["H"] = "actions.toggle_hidden",
      ["<Esc>"] = "actions.close",
    },
  },
}
