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

local function plugin(name)
  return require("human.plugin." .. name)
end

local function colorscheme(name)
  local colorscheme = require("human.colorscheme." .. name)
  colorscheme.lazy = true
  return colorscheme
end

require("lazy").setup({
  colorscheme("kanagawa"),
  colorscheme("nightcity"),
  colorscheme("nightfox"),
  colorscheme("oh-lucy"),
  colorscheme("revolutions"),
  colorscheme("rose-pine"),
  colorscheme("nightblossom"),
  colorscheme("parsee"),
  colorscheme("everforest"),
  colorscheme("rei"),

  plugin("oil"),
  plugin("blink"),
  plugin("fzf"),
  plugin("treesitter"),
  plugin("lazy-lsp"),
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
  plugin("sunglasses"),
})
