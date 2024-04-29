return {
  -- Discord Rich Presence for Neovim
  "andweeb/presence.nvim",
  config = function()
    local function for_work()
      local work_folder = "Notive"

      local current_path = vim.fn.getcwd()
      local includes_work_folder = string.find(current_path, work_folder)
      return includes_work_folder
    end

    local function editing_text(file)
      if for_work() then
        return "Editing a file (Work)"
      end

      return string.format("Editing %s", file)
    end

    local function file_explorer_text(file_exporer)
      if for_work() then
        return "Browsing folders (Work)"
      end

      return string.format("Browsing %s", file_exporer)
    end

    local function git_commit_text(filename)
      if for_work() then
        return "Committing (Work)"
      end

      return string.format("Commiting %s", filename)
    end

    local function plugin_manager_text(plugin_manager)
      if for_work() then
        return "Managing plugins (Work)"
      end
      return string.format("Managing %s", plugin_manager)
    end

    local function reading_text(filename)
      if for_work() then
        return "Reading text (Work)"
      end
      return string.format("Reading %s", filename)
    end

    local function workspace_text(project_name, buffer)
      if for_work() then
        return "Working on a project (Work)"
      end
      return string.format("Working on %s", project_name)
    end

    local function line_number_text(line_number, line_count)
      if for_work() then
        return string.format("Line %s out of %s (Work)", line_number, line_count)
      end
      return string.format("Line %s out of %s", line_number, line_count)
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
      editing_text = editing_text,
      file_explorer_text = file_explorer_text,
      git_commit_text = git_commit_text,
      plugin_manager_text = plugin_manager_text,
      reading_text = reading_text,
      workspace_text = workspace_text,
      line_number_text = line_number_text,
    })
  end,
}
