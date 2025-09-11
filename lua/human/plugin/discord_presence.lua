return {
  -- Discord Rich Presence for Neovim
  "andweeb/presence.nvim",
  config = function()
    local function format(str, ...)
      local work_folder = "IO"

      local current_path = vim.fn.getcwd()
      local includes_work_folder = string.find(current_path, work_folder)

      if includes_work_folder then
        return "Working :("
      else
        return string.format(str, ...)
      end
    end

    require("presence").setup({
      auto_update = true,
      neovim_image_text = "Emacs",
      main_image = "neovim",
      client_id = "793271441293967371",
      log_level = nil,
      debounce_timeout = 10,
      enable_line_number = true,
      blacklist = {},
      buttons = false,
      file_assets = {},
      show_time = true,

      -- text
      editing_text = function(file)
        format("Editing %s", file)
      end,
      file_explorer_text = function(file_exporer)
        format("Browsing %s", file_exporer)
      end,
      git_commit_text = function(filename)
        format("Commiting %s", filename)
      end,
      plugin_manager_text = function(plugin_manager)
        format("Managing %s", plugin_manager)
      end,
      reading_text = function(filename)
        format("Reading %s", filename)
      end,
      workspace_text = function(project_name, buffer)
        format("Working on %s", project_name)
      end,
      line_number_text = function(line_number, line_count)
        format("Line %s out of %s", line_number, line_count)
      end,
    })
  end,
}
