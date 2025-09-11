local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

function plugin(plugin)
  return require("human.plugin." .. plugin)
end

function colorscheme(colorscheme)
  return require("human.colorscheme." .. colorscheme)
end

require("lazy").setup({
  colorscheme("kanagawa"),
  colorscheme("nightcity"),
  colorscheme("nightfox"),
  colorscheme("oh-lucy"),
  colorscheme("revolutions"),
  colorscheme("rose-pine"),
  colorscheme("rosebush"),

  plugin("oil"),
  plugin("blink"),
  plugin("fzf"),
  plugin("treesitter"),
  plugin("lazy_lsp"),
  plugin("conform"),
  plugin("fundo"),
  plugin("discord_presence"),
  plugin("whichkey"),
  plugin("multiline"),
  plugin("ccc"),
  plugin("comment"),
  plugin("lualine"),
  plugin("copilot"),
  plugin("dashboard"),
})
