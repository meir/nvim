-- This is a patch for the sunglasses plugin. This patch is needed because the
-- plugin gives an error when the "Sunglasses" tag is not present on a window
-- which happens often when switching between buffers using Harpoon2
require("sunglasses.window").is_shaded = function(self)
  local response, _ = pcall(vim.api.nvim_win_get_var, self.window, "Sunglasses")
  if response == true then
    return true
  end
  return false
end
