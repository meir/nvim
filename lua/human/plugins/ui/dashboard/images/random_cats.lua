local cats = {
  "cat_hunting",
  "cat_in_box",
  "cat_laying",
  "cat_sleeping",
  "cat_w_bug",
}

math.randomseed(os.time())
local random_cat = cats[math.random(#cats)]

return require("ui.dashboard.images." .. random_cat)
