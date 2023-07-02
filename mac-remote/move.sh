#!/bin/sh
PATH=$PATH:/usr/local/bin
exec 2>/tmp/err
hs <<EOF
spaces = require("hs.spaces")
-- move current window to the space sp
function MoveWindowToSpace(sp)
  local win = hs.window.focusedWindow()      -- current window
  local cur_screen = hs.screen.mainScreen()
  local cur_screen_id = cur_screen:getUUID()
  local all_spaces=spaces.allSpaces()
  local spaceID = all_spaces[cur_screen_id][sp]
  spaces.gotoSpace(spaceID)              -- follow window to new space
end
MoveWindowToSpace($1)
EOF

