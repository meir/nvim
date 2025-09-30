local function read_file(file_path)
  local file = io.open("lua/human/command/cats/" .. file_path, "r")
  if not file then
    return "no cat found :("
  end
  local content = file:read("*all")
  file:close()
  return content
end

local cats = {
  read_file("01.txt"),
  read_file("02.txt"),
  read_file("03.txt"),
  read_file("04.txt"),
  read_file("05.txt"),
  read_file("06.txt"),
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
