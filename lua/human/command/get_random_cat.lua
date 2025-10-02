local function read_file(cat_name)
  return require("human.command.cats." .. cat_name)
end

local cats = {
  read_file("01"),
  read_file("02"),
  read_file("03"),
  read_file("04"),
  read_file("05"),
  read_file("06"),
}

local function pad(logo)
  logo = vim.split(logo, "\n")
  local longest_line = 0
  for _, line in ipairs(logo) do
    if #line > longest_line then
      longest_line = #line
    end
  end

  -- add spaces to the end of each line until theyre as long as the longest line
  for i, line in ipairs(logo) do
    logo[i] = line .. string.rep(" ", longest_line - #line)
  end
  return vim.fn.join(logo, "\n")
end

local function get_cat()
  math.randomseed(os.time())
  local random_cat = cats[math.random(#cats)]
  return pad(random_cat)
end

return {
  get_cat = get_cat, -- to use in other places

  "GetRandomCat",
  function()
    print(get_cat())
  end,
}
