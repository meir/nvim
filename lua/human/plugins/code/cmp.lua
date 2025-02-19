return {
  {
    "zbirenbaum/copilot.lua",
    version = "*",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = false,
      },
      panel = {
        enabled = false,
      },
    },
  },
  {
    "giuxtaposition/blink-cmp-copilot",
    version = "*",
    dependencies = {
      "zbirenbaum/copilot.lua",
    },
  },
  {
    "saghen/blink.cmp",
    version="*",
    opts = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500
      },
      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
        menu = {
          auto_show = function(ctx) return ctx.mode ~= 'cmdline' end,
          draw = {
            treesitter = { 'lsp' },
            columns = {
              {
                "label",
                "label_description",
                gap = 1,
              },
              {
                "kind_icon",
                "kind",
              },
            },
          },
        },
        trigger = {
          show_on_trigger_character = true,
          show_on_keyword = true,
          show_on_insert_on_trigger_character = true,
        },
      },
      keymap = {
        preset = 'none',
        ['<CR>'] = { 'accept', 'fallback' },
        ['<C-Up>'] = { 'select_prev', 'fallback' },
        ['<C-Down>'] = { 'select_next', 'fallback' },
      },
      sources = {
        default = {
          "copilot",
          "lsp",
          "buffer",
          "path",
          "snippets",
        },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
            transform_items = function(_, items)
              local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
              local kind_idx = #CompletionItemKind + 1
              CompletionItemKind[kind_idx] = "Copilot"
              for _, item in ipairs(items) do
                item.kind = kind_idx
              end
              return items
            end,
          },
        },
      },
      appearance = {
        kind_icons = {
          Copilot = "",
          Text = '󰉿',
          Method = '󰊕',
          Function = '󰊕',
          Constructor = '󰒓',

          Field = '󰜢',
          Variable = '󰆦',
          Property = '󰖷',

          Class = '󱡠',
          Interface = '󱡠',
          Struct = '󱡠',
          Module = '󰅩',

          Unit = '󰪚',
          Value = '󰦨',
          Enum = '󰦨',
          EnumMember = '󰦨',

          Keyword = '󰻾',
          Constant = '󰏿',

          Snippet = '󱄽',
          Color = '󰏘',
          File = '󰈔',
          Reference = '󰬲',
          Folder = '󰉋',
          Event = '󱐋',
          Operator = '󰪚',
          TypeParameter = '󰬛',
        },
      },
    },
  }
}
