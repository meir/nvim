
-- Set colorscheme in a global variable whenever the colorscheme has changed
vim.cmd.autocmd("ColorScheme", "*", "let g:colors_name = expand('<amatch>')")

-- when there are no open buffers left, switch to the Dashboard
vim.api.nvim_create_autocmd("BufDelete", {
  group = vim.api.nvim_create_augroup("dashboard_on_empty", {}),
  callback = function(args)
    if vim.api.nvim_buf_get_name(0) == "" then
      vim.cmd("Dashboard")
    end
  end,
})
