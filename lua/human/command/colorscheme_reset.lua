return {
  "ColorschemeReset",
  function()
    local cache_path = vim.fn.stdpath("cache") .. "/colorscheme.txt"
    local content = vim.fn.readfile(cache_path)
    vim.cmd.colorscheme(content)
  end,
}
