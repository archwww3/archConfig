from xkeysnail.transform import *

define_keymap(None, {
  # ctrl+hjkl to left,down,up,right
  # #K("C-h"): K("LEFT"),
  # #K("C-j"): K("DOWN"),
  # #K("C-k"): K("UP"),
  # #K("C-l"): K("RIGHT"),

  K("LM-h"): K("LEFT"),
  K("LM-j"): K("DOWN"),
  K("LM-k"): K("UP"),
  K("LM-l"): K("RIGHT"),
  K("C-i"): K("Backspace"),
}, "quick move") 
