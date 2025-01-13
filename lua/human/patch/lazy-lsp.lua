-- This is a patch for the lazy-lsp plugin. This patch is needed because on startup
-- the plugin gives an error because it checks for a value that happens to be nil.
require("lazy-lsp.helpers").build_filetype_to_servers_index = function(servers, lspconfig)
  local index = {}
  for server, _ in pairs(servers) do
    if lspconfig[server] and lspconfig[server].document_config then
      local filetypes = lspconfig[server].document_config.default_config.filetypes
      if filetypes then
        for _, filetype in ipairs(filetypes) do
          if not index[filetype] then
            index[filetype] = {}
          end
          table.insert(index[filetype], server)
        end
      else
        -- what would be a good way to log this?
        -- print("no filetypes for", server)
      end
    end
  end
  return index
end
