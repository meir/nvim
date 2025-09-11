return {
  "SetBufferFiletype",
  function()
    local filetype = vim.fn.input("Filetype: ")
    vim.bo.filetype = filetype
  end,
}
