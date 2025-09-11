local keymap = vim.keymap.set
local del = vim.keymap.del

keymap("n", "<leader>qq", ":qa!<cr>", { desc = "Quit" })

-- window movements
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Split window
keymap("n", "sx", ":split<cr><C-w>w", { desc = "Open split window on bottom" })
keymap("n", "sd", ":vsplit<cr><C-w>w", { desc = "Open split window on right" })

-- Select all
keymap("n", "<C-a>", "gg<S-v>G<cr>zz", { desc = "Select all" })

-- Redo
keymap("n", "<S-u>", "<C-r>", { desc = "Redo" })

-- terminal
keymap("n", "<leader>tt", ":spl|terminal<cr>:resize 20%<cr>", { desc = "Open terminal" })
keymap("n", "<leader>tq", "i<C-c><C-d><cmd>q<cr>", { desc = "Close terminal" })
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- filetree
keymap("n", "<leader>e", "<cmd>Oil --float<cr>", { desc = "File tree" })

-- telescope
keymap("n", "<leader> ", "<cmd>FzfLua files<cr>", { desc = "Search through files" })
keymap("n", "<leader>sg", "<cmd>FzfLua live_grep<cr>", { desc = "Grep files" })
keymap("n", "<leader>sb", "<cmd>FzfLua buffers<cr>", { desc = "Search buffers" })

-- colorscheme
keymap("n", "<leader>cc", "<cmd>FzfLua colorschemes<cr>", { desc = "Change colorscheme" })
keymap("n", "<leader>cr", "<cmd>ColorschemeReset<cr>", { desc = "Reset colorscheme" })
keymap("n", "<leader>cs", "<cmd>ColorschemeSave<cr>", { desc = "Set current colorscheme" })

-- close buffer
keymap("n", "<leader>bd", "<cmd>bd!<cr>", { desc = "Close buffer" })

-- set filetype
keymap("n", "<leader>bt", "<cmd>SetBufferFiletype<cr>", { desc = "Set buffer filetype" })

-- format buffer
keymap("n", "<leader>bf", vim.lsp.buf.format, { desc = "Format buffer" })

-- lsp hops
-- keymap("n", "gd", "<cmd>FzfLua lsp_definitions<cr>", { desc = "Go to definition" })
-- keymap("n", "gi", "<cmd>FzfLua lsp_implementations<cr>", { desc = "Go to implementation" })
-- keymap("n", "gr", "<cmd>FzfLua lsp_references<cr>", { desc = "Go to references" })
-- keymap("n", "gt", "<cmd>FzfLua lsp_typedefs<cr>", { desc = "Go to type definition" })

-- open diagnostics
keymap("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open diagostics for current line" })
