local keymap = vim.keymap.set
local del = vim.keymap.del

-- delete keymaps with overlaps
del("n", "gb")
del("n", "gc")

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

-- overseer toggle/start
keymap("n", "<leader>ot", ":OverseerToggle<cr>", { desc = "Open Overseer" })
keymap("n", "<leader>os", ":OverseerRun<cr>", { desc = "Run Overseer" })

-- hop
keymap("n", "ff", ":HopWord<cr>", { desc = "Hop" })

-- terminal

keymap("n", "<leader>tt", ":spl|terminal<cr>:resize 12<cr>", { desc = "Open terminal" })
keymap("n", "<leader>tq", "i<C-c><C-d><cmd>q<cr>", { desc = "Close terminal" })
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- filetree
keymap("n", "<leader>e", "<cmd>Oil --float<cr>", { desc = "File tree" })

-- telescope
keymap("n", "<leader> ", "<cmd>Telescope find_files<cr>", { desc = "Search through files" })
keymap("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Grep files" })
keymap("n", "<leader>sb", "<cmd>Telescope buffers<cr>", { desc = "Search buffers" })
keymap("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = "Search help tags" })

-- colorscheme
keymap("n", "<leader>cc", "<cmd>Telescope colorscheme<cr>", { desc = "Change colorscheme" })
keymap("n", "<leader>cr", "<cmd>ColorschemeReset<cr>", { desc = "Reset colorscheme" })
keymap("n", "<leader>cs", "<cmd>ColorschemeSave<cr>", { desc = "Set current colorscheme" })

-- close buffer
keymap("n", "<leader>bd", "<cmd>CloseBuffer<cr>", { desc = "Close buffer" })

-- diff buffers
keymap("n", "<leader>be", "<cmd>windo diffthis<cr>", { desc = "Diff buffers" })
keymap("n", "<leader>bc", "<cmd>windo diffoff<cr>", { desc = "Close diff" })

-- set filetype
keymap("n", "<leader>bt", "<cmd>SetBufferFiletype<cr>", { desc = "Set buffer filetype" })

-- format buffer
keymap("n", "<leader>bf", vim.lsp.buf.format, { desc = "Format buffer" })

-- peepsight
keymap("n", "<leader>pt", "<cmd>Peepsight<cr>", { desc = "Peepsight toggle" })

-- harpoon
keymap("n", "<leader>a", "<cmd>HarpoonAdd<cr>", { desc = "Add harpoon" })
keymap("n", "<leader>h", "<cmd>HarpoonOpen<cr>", { desc = "Open harpoon" })

keymap("n", "H", "<cmd>HarpoonPrev<cr>", { desc = "Harpoon previous" })
keymap("n", "L", "<cmd>HarpoonNext<cr>", { desc = "Harpoon next" })

-- lsp hops
keymap("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Go to definition" })
keymap("n", "gi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Go to implementation" })
keymap("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "Go to references" })
keymap("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "Go to type definition" })

-- git
keymap("n", "<leader>ggs", "<cmd>Telescope git_status<cr>", { desc = "Git status" })
keymap("n", "<leader>ggb", "<cmd>Telescope git_branches<cr>", { desc = "Git branches" })
keymap("n", "<leader>ggc", "<cmd>Telescope git_commits<cr>", { desc = "Git commits" })
keymap("n", "<leader>ggf", "<cmd>Telescope git_files<cr>", { desc = "Git files" })
keymap("n", "<leader>ggp", "<cmd>Telescope git_pull<cr>", { desc = "Git pull" })
keymap("n", "<leader>ggo", "<cmd>Telescope git_push<cr>", { desc = "Git push" })
keymap("n", "<leader>ggm", "<cmd>Telescope git_merge<cr>", { desc = "Git merge" })
keymap("n", "<leader>ggr", "<cmd>Telescope git_rebase<cr>", { desc = "Git rebase" })
keymap("n", "<leader>ggt", "<cmd>Telescope git_tags<cr>", { desc = "Git tags" })
keymap("n", "<leader>ggd", "<cmd>Telescope git_diff<cr>", { desc = "Git diff" })

-- open diagnostics
keymap("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open diagostics for current line" })

-- gitlinker
keymap("n", "yu", "<cmd>YankPermalink<cr>", { desc = "Yank git permalink on line" })
