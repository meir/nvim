return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
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
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              index = "00-index.norg",
              default_workspace = "notes",
            },
          },
          ["core.syntax"] = {},
        },
      })
    end,
  },
}
