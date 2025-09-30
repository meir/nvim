-- this is done to temporarily suppress known deprecation warnings until the plugin is fixed

local deprecate = vim.deprecate

local suppress_deprecations = {
  "lspconfig",
}

vim.deprecate = function(name, ...)
  for _, plugin in ipairs(suppress_deprecations) do
    if name:find(plugin) then
      return
    end
  end
  deprecate(name, ...)
end
