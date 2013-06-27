local awful = require("awful")

-- Table of layouts to cover with awful.layout.inc, order matters.
local layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.max,
    awful.layout.suit.floating,
}

return layouts
