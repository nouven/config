lua << EOF
local custom_gruvbox = require'lualine.themes.gruvbox'
--custom_gruvbox.normal.a.bg = 'none'
custom_gruvbox.normal.a.bg = '#00334d'
custom_gruvbox.normal.a.fg= 'lightgray'
custom_gruvbox.normal.b.bg = 'none'
custom_gruvbox.normal.c.bg = 'none'
custom_gruvbox.insert.b.bg = 'none'
custom_gruvbox.insert.c.bg = 'none'
custom_gruvbox.command.b.bg = 'none'
custom_gruvbox.command.c.bg = 'none'
custom_gruvbox.visual.b.bg = 'none'
custom_gruvbox.visual.c.bg = 'none'

local custom_solarized = require'lualine.themes.solarized_dark'
--custom_solarized.normal.c.bg = 'none'
--custom_solarized.insert.c.bg = 'none'
--custom_solarized.command.c.bg = 'none'
--custom_solarized.visual.c.bg = 'none'

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = custom_gruvbox,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },

  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF
