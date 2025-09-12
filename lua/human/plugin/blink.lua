return {
  "saghen/blink.cmp",
  dependencies = {
    "fang2hou/blink-copilot",
  },
  version = "1.*",
  opts = {
    keymap = {
      preset = "none",
      ["<CR>"] = { "accept", "fallback" },
      ["<C-Up>"] = { "select_prev", "fallback" },
      ["<C-Down>"] = { "select_next", "fallback" },
    },

    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
        window = {
          border = "single"
        },
      },
      list = {
        selection = {
          preselect = false,
        },
      },
      menu = {
        border = "single"
      },
    },

    sources = {
      default = {
        "copilot",
        "lsp",
        "buffer",
        "path",
      },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        },
      },
    },
  },
}
