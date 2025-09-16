return {
  "vyfor/cord.nvim",
  build = ':Cord update',
  opts = {
    editor = {
      client = "neovim",
      tooltip = "E-macs",
      icon = "https://github.com/meir/nvim/blob/main/Neovim.png?raw=true",
    },
    display = {
      swap_icons = true,
    },
    text = {
        editing = 'Editing ${filename}',
        file_browser = 'Browsing files in ${tooltip}',
    },
    variables = true,
  },
}
