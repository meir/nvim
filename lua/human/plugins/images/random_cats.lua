local cats = {
  "cat_hunting",
  "cat_in_box",
  "cat_laying",
  "cat_sleeping",
  "cat_w_bug",
  "curious_cat",
}

math.randomseed(os.time())
local random_cat = cats[math.random(#cats)]

return require("human.plugins.images." .. random_cat)
