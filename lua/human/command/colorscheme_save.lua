return {
  "ColorschemeSave",
  function()
    local cache_path = vim.fn.stdpath("cache") .. "/colorscheme.txt"
    local content = vim.g.colors_name
    print(content)
    vim.fn.writefile({ content }, cache_path)
  end,
}
