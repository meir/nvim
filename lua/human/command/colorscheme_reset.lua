return {
  "ColorschemeReset",
  function()
    local cache_path = vim.fn.stdpath("cache") .. "/colorscheme.txt"
    if vim.fn.filereadable(cache_path) == 0 then
      return
    end

    local content = vim.fn.readfile(cache_path)
    vim.cmd.colorscheme(content)
  end,
}
