local function command(cmd)
  local cmd_data = require("human.command." .. cmd)

  if cmd_data[3] == nil then
    cmd_data[3] = { nargs = 0 }
  end

  vim.api.nvim_create_user_command(cmd_data[1], cmd_data[2], cmd_data[3])

end

command("colorscheme_reset")
command("colorscheme_save")
command("set_buffer_filetype")
command("get_random_cat")
command("format")

