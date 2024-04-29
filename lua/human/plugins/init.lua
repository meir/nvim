local function script_path()
  return debug.getinfo(2, "S").source:sub(2):match("(.*/)")
end

local dir = script_path()
package.path = package.path .. ";" .. dir .. "?.lua"

local function loadfile(file)
  local path = string.gsub(file, dir, "")
  path = string.gsub(path, "%.lua$", "")
  path = string.gsub(path, "/", ".")

  local ok, response = pcall(require, path)
  if not ok then
    print("failed to load plugin", file, response)
    return false
  end

  return response
end

local function clean_plugin(plugin)
  if type(plugin) ~= "table" then
    return false, {}
  end

  if type(plugin[1]) == "string" then
    return true, plugin
  end

  local actual_plugins = {}
  for key, value in pairs(plugin) do
    if type(value) == "table" then
      local is_plug = false
      is_plug, actual_plugins[key] = clean_plugin(value)
      if is_plug == false then
        return false, {}
      end
    end
  end

  return #actual_plugins == #plugin, plugin
end

local function is_plugin(file)
  local is_lua = string.match(file, "%.lua$")
  if not is_lua then
    return false
  end
  -- ignore init.lua files
  if string.match(file, "init%.lua$") then
    return false
  end

  local response = loadfile(file)
  local is_plug = false
  is_plug, response = clean_plugin(response)
  return is_lua and is_plug, response
end

local function find_recursive(folder)
  -- check if folder exists
  local exists = vim.fn.isdirectory(folder)
  if exists == 0 then
    return {}
  end

  -- loop through files in folder
  local plugins = {}
  local files = vim.fn.readdir(folder)
  for _, file in ipairs(files) do
    local path = folder .. file
    local is_dir = vim.fn.isdirectory(path)
    if is_dir == 1 then
      local nested = find_recursive(path .. "/")
      for _, plugin in ipairs(nested) do
        table.insert(plugins, plugin)
      end
    else
      local ok, plugin = is_plugin(path)
      if ok then
        table.insert(plugins, plugin)
      end
    end
  end

  return plugins
end

return find_recursive(dir)
