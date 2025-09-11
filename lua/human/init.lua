require("human.commands")
require("human.options")
require("human.keymaps")
require("human.lazy")

vim.cmd.autocmd("ColorScheme", "*", "let g:colors_name = expand('<amatch>')")
vim.cmd("ColorschemeReset")
