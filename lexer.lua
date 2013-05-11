-- "Diogo Dark" editor theme for Textadept.
-- Made from Dark theme for TextAdept (Copyright 2007-2013 Mitchell mitchell.att.foicica.com. See LICENSE.)

-- Please note this theme is in a separate Lua state than Textadept's main one.
-- This means the global variables like 'buffer', 'view', and 'gui' are not
-- available here. Only the variables in the 'lexer' module are.

local l, color, style = lexer, lexer.color, lexer.style

l.colors = {
  -- Greyscale colors.
  dark_black   = color('00', '00', '00'),
  black        = color('11', '11', '11'),
  light_black  = color('2A', '2A', '2A'),
  --             color('4D', '4D', '4D'),
  dark_grey    = color('55', '55', '55'),
--grey         = color('80', '80', '80'),
  light_grey   = color('99', '99', '99'),
  --             color('B3', 'B3', 'B3'),
  dark_white   = color('bb', 'bb', 'bb'),
  white        = color('E6', 'E6', 'E6'),
  light_white  = color('FF', 'FF', 'FF'),

  -- Dark colors.
--dark_red      = color('66', '1A', '1A'),
--dark_yellow   = color('66', '66', '1A'),
--dark_green    = color('1A', '66', '1A'),
--dark_teal     = color('1A', '66', '66'),
--dark_purple   = color('66', '1A', '66'),
--dark_orange   = color('B3', '66', '1A'),
--dark_pink     = color('B3', '66', '66'),
--dark_lavender = color('66', '66', 'B3'),
--dark_blue     = color('1A', '66', 'B3'),

  -- Normal colors.
  red      = color('99', '4D', '4D'),
  yellow   = color('f6', 'e4', '95'),
  green    = color('4D', '99', '4D'),
  teal     = color('4D', '99', '99'),
  purple   = color('ef', 'b4', 'ff'),
  orange   = color('E6', '99', '4D'),
--pink     = color('E6', '99', '99'),
  lavender = color('99', '99', 'E6'),
  blue     = color('4D', '99', 'E6'),
  beje     = color('f2', 'f1', 'b1'),

  -- Light colors.
  light_red      = color('e0', '67', '3f'),
  light_yellow   = color('CC', 'CC', '80'),
  light_green    = color('b5', 'f2', '52'),
--light_teal     = color('80', 'CC', 'CC'),
--light_purple   = color('CC', '80', 'CC'),
--light_orange   = color('FF', 'CC', '80'),
--light_pink     = color('FF', 'CC', 'CC'),
--light_lavender = color('CC', 'CC', 'FF'),
  light_blue     = color('88', 'ee', 'ff'),
}

l.style_nothing    = style{                                  }
l.style_class      = style{fore = l.colors.light_yellow      }
l.style_comment    = style{fore = l.colors.dark_grey         }
l.style_constant   = style{fore = l.colors.light_red         }
l.style_definition = style{fore = l.colors.light_yellow      }
l.style_error      = style{fore = l.colors.red, italic = true}
l.style_function   = style{fore = l.colors.purple            }
l.style_keyword    = style{fore = l.colors.light_white       }
l.style_label      = style{fore = l.colors.light_green       }
l.style_number     = style{fore = l.colors.light_green       }
l.style_operator   = style{fore = l.colors.light_blue        }
l.style_regex      = style{fore = l.colors.orange            }
l.style_string     = style{fore = l.colors.yellow            }
l.style_preproc    = style{fore = l.colors.orange            }
l.style_tag        = style{fore = l.colors.light_white       }
l.style_type       = style{fore = l.colors.purple            }
l.style_variable   = style{fore = l.colors.light_red         }
l.style_whitespace = style{                                  }
l.style_embedded   = l.style_tag..{back = l.colors.light_black}
l.style_identifier = l.style_nothing

-- Default styles.
local font_face = 'Droid Sans Mono'
local font_size = 10
if WIN32 then
  font_face = 'Droid Sans Mono'
elseif OSX then
  font_face = 'Droid Sans Mono'
  font_size = 10
end
l.style_default = style{
  font = font_face, size = font_size,
  fore = l.colors.dark_white, back = l.colors.black
}
l.style_line_number = style{fore = l.colors.dark_grey, back = l.colors.light_black}
l.style_bracelight = style{fore = l.colors.black, back = l.colors.light_blue}
l.style_bracebad = style{fore = l.colors.light_red}
l.style_controlchar = l.style_nothing
l.style_indentguide = style{
  fore = l.colors.light_black, back = l.colors.light_black
}
l.style_calltip = style{fore = l.colors.light_grey, back = l.colors.light_black}
