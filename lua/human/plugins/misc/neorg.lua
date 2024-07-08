return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {
            config = {
              icons = {
                heading = {
                  icons = {
                    "󰝤",
                    "",
                    "󰨓",
                    "󰨔",
                    "",
                    "-",
                  },
                },
              },
            },
            ["core.dirman"] = {
              config = {
                workspaces = {
                  notes = "~/notes",
                },
                default_workspace = "notes",
              },
            },
          },
        },
      })
    end,
  },
}
