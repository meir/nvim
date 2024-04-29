-- Set global options
local options = {
  -- line numbers
  relativenumber = true,
  number = true,

  -- indentation
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,

  -- search
  ignorecase = true,
  smartcase = true,

  -- cursor line
  cursorline = true,

  -- colors
  termguicolors = true,
  background = "dark",
  signcolumn = "yes",

  -- backspace
  backspace = "indent,eol,start",

  -- clipboard
  clipboard = "unnamedplus",

  -- splits
  splitright = true,
  splitbelow = true,

  -- swap
  swapfile = false,
}

vim.g.mapleader = " "
vim.g.mapllocalleader = " "

for k, v in pairs(options) do
  vim.opt[k] = v
end
