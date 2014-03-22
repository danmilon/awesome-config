local awful = require("awful")
local layouts = require("./layouts")

local tags

if screen.count() == 1 then
  tags = {
    awful.tag({ "main", "work", "im", "mail", "moar", "music" }, 1, layouts[1])
  }

  tags.rules = {
    email = tags[1][4],
    im = tags[1][3],
    music = tags[1][6]
  }
else
  tags = {
    awful.tag({ "main", "work", "moan" }, 1, layouts[1]),
    awful.tag({ "work", "im", "mail", "moar", "music" }, 2, layouts[1])
  }

  tags.rules = {
    email = tags[2][3],
    im = tags[2][2],
    music = tags[2][5]
  }
end

return tags
