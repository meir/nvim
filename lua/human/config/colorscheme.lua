-- put colorscheme changes automatically into g:colors_name
vim.cmd.autocmd("ColorScheme", "*", "let g:colors_name = expand('<amatch>')")

vim.cmd("ColorschemeReset")
