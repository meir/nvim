local function script_path()
  return debug.getinfo(2, "S").source:sub(2):match("(.*/)")
end

local dir = script_path()
-- package.path = package.path .. ";" .. dir .. "?.lua"

local function check_plugin(data)
  if type(data) == "table" then
    if type(data[1]) == "string" then
      return true
    else
      for _, value in pairs(data) do
        if type(value) == "table" then
          if not check_plugin(value) then
            return false
          end
        end
      end
      return true
    end
  end
end

local function get_require_path(path)
  for _, runtime_path in pairs(vim.api.nvim_list_runtime_paths()) do
    path = string.gsub(path, runtime_path .. "/lua/", "")
  end
  path = string.gsub(path, "%.lua$", "")
  path = string.gsub(path, "/", ".")
  return path
end

local function load_plugin(file)
  if string.match(file, ".lua$") then
    local path = get_require_path(file)
    local plugin = require(path)
    if plugin then
      if check_plugin(plugin) then
        return plugin, true
      end
    end
  end
  return nil, false
end

local function find_plugins(file)
  local plugins = {}

  if vim.fn.isdirectory(file) == 1 then
    local subfiles = vim.fn.readdir(file)
    for _, subfile in pairs(subfiles) do
      local subplugins = find_plugins(vim.fn.resolve(file .. "/" .. subfile))
      for _, plug in pairs(subplugins) do
        table.insert(plugins, plug)
      end
    end
  else
    if file == nil then
      return {}
    end

    if string.match(file, "init%.lua$") then
      return {}
    end

    local plugin, ok = load_plugin(file)
    if ok then
      table.insert(plugins, plugin)
    end
  end

  return plugins
end

return find_plugins(dir)
