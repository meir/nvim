return {
  {
    "stevearc/oil.nvim",
    config = function()
      local oil = require("oil")
      oil.setup({
        default_file_explorer = true,
        columns = {
          "icon",
          "size",
        },
        float = {
          max_width = 70,
          max_height = 35,
        },
        buf_options = {
          buflisted = false,
          bufhidden = "hide",
        },
        win_options = {
          wrap = false,
          signcolumn = "no",
          cursorcolumn = false,
          foldcolumn = "0",
          spell = false,
          list = false,
          conceallevel = 3,
          concealcursor = "nvic",
        },
        delete_to_trash = false,
        skip_confirm_for_simple_edits = false,
        prompt_save_on_select_new_entry = true,
        cleanup_delay_ms = 2000,
        keymaps = {
          ["g?"] = false,
          ["<C-s>"] = false,
          ["<C-h>"] = false,
          ["<C-t>"] = false,
          ["<C-p>"] = false,
          ["<C-c>"] = false,
          ["<C-l>"] = false,
          ["-"] = false,
          ["_"] = false,
          ["`"] = false,
          ["~"] = false,
          ["gs"] = false,
          ["gx"] = false,
          ["g."] = false,
          ["g\\"] = false,

          ["<CR>"] = "actions.select",
          ["<Backspace>"] = "actions.parent",
          ["<S-Backspace>"] = "actions.open_cwd",
          ["H"] = "actions.toggle_hidden",
          ["<Esc>"] = "actions.close",
        },
      })
    end,
  },
}
