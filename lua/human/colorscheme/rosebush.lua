return {
  "meir/rosebush",
  dev = true,
  dir = "/Users/meir/Documents/personal/rosebush",
  init = function()
    vim.api.nvim_create_user_command("ReloadRoses", function()
      vim.cmd("Lazy reload rosebush")
      vim.cmd("colorscheme rosebush-desdemona")
    end, {
      nargs = 0,
    })
  end,
}
