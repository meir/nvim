local function close(cmp)
  return function(fallback)
    if cmp == nil then
      fallback()
    end

    if cmp.visible() then
      cmp.close()
    end
    fallback()
  end
end

return {
  {
    "zbirenbaum/copilot.lua",
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
    "zbirenbaum/copilot-cmp",
    dependencies = {
      "zbirenbaum/copilot.lua",
    },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    -- A completion plugin for neovim coded in Lua.
    "hrsh7th/nvim-cmp",
    dependencies = {
      "zbirenbaum/copilot-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    event = "InsertEnter",
    config = function(_, opts)
      local cmp = require("cmp")
      local defaults = require("cmp.config.default")()

      cmp.setup({
        preselect = cmp.PreselectMode.None,
        completion = {
          completeopt = "menu,menuone,noinsert,noselect",
        },
        window = {
          documentation = {
            max_height = 10,
          },
        },
        performance = {
          max_view_entries = 20,
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = opts.mapping,
        sources = cmp.config.sources({
          { name = "copilot", group_index = 1, priority = 100 },
          { name = "nvim_lsp" },
          { name = "path" },
        }, {
          { name = "buffer" },
        }),
        sorting = defaults.sorting,
      })
    end,

    opts = function(opts)
      local cmp = require("cmp")

      if opts.mapping == nil then
        opts.mapping = {}
      end

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- ignore completion up and down without control
        ["<Up>"] = cmp.mapping(close(cmp), { "i", "s" }),
        ["<Down>"] = cmp.mapping(close(cmp), { "i", "s" }),

        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<C-Up>"] = cmp.mapping.select_prev_item(),
        ["<C-Down>"] = cmp.mapping.select_next_item(),
      })
      return opts
    end,
  },
}
