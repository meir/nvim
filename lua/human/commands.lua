local function command(cmd)
  return require("human.command." .. cmd)
end

local commands = {
  command("colorscheme_reset"),
  command("colorscheme_save"),
  command("set_buffer_filetype"),
  command("get_random_cat"),
}

for _, cmd in ipairs(commands) do
  if cmd[3] == nil then
    cmd[3] = { nargs = 0 }
  end

  vim.api.nvim_create_user_command(cmd[1], cmd[2], cmd[3])
end
