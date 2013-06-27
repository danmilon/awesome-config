local os = require("os")
local wibox = require("wibox")
local awful = require("awful")

local kbdswitcher = {}
kbdswitcher.cmd = 'setxkbmap'
kbdswitcher.layout = { { "us", "" }, { "el", "" } }
kbdswitcher.current = 1
kbdswitcher.widget = wibox.widget.textbox()
kbdswitcher.widget:set_text("" .. kbdswitcher.layout[kbdswitcher.current][1] .. " ")
kbdswitcher.switch = function ()
  kbdswitcher.current = kbdswitcher.current % #(kbdswitcher.layout) + 1
  local t = kbdswitcher.layout[kbdswitcher.current]
  kbdswitcher.widget:set_text(" " .. t[1] .. " ")
  os.execute(kbdswitcher.cmd .. " " .. t[1] .. " " .. t[2])
end

kbdswitcher.widget:buttons(awful.util.table.join(
  awful.button({}, 1, function () kbdswitcher:switch() end)
))

return kbdswitcher
