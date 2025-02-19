local commands = {}

-- close buffer

local function close_buffer()
  -- delete current file buffer
  require("mini.bufremove").delete(0)

  local buf_amount = #vim.fn.getbufinfo({ buflisted = 1 })
  if buf_amount == 1 then
    vim.cmd("Dashboard")
  end
end

table.insert(commands, {
  "CloseBuffer",
  close_buffer,
  {
    nargs = 0,
  },
})

-- colorscheme commands

table.insert(commands, {
  "ColorschemeReset",
  function()
    local cache_path = vim.fn.stdpath("cache") .. "/colorscheme.txt"
    local content = vim.fn.readfile(cache_path)
    vim.cmd.colorscheme(content)
  end,
  { nargs = 0 },
})

table.insert(commands, {
  "ColorschemeSave",
  function()
    local cache_path = vim.fn.stdpath("cache") .. "/colorscheme.txt"
    local content = vim.g.colors_name
    print(content)
    vim.fn.writefile({ content }, cache_path)
  end,
  { nargs = 0 },
})

-- set buffer filetype

table.insert(commands, {
  "SetBufferFiletype",
  function()
    local filetype = vim.fn.input("Filetype: ")
    vim.bo.filetype = filetype
  end,
  { nargs = 0 },
})

-- gitlinker command
table.insert(commands, {
  "YankPermalink",
  function()
    require("gitlinker").get_buf_range_url("n")
  end,
  { nargs = 0 },
})

-- add all commands

for _, cmd in ipairs(commands) do
  vim.api.nvim_create_user_command(cmd[1], cmd[2], cmd[3])
end
