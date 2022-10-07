nnoremap <silent>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <silent>fg <cmd>Telescope live_grep<cr>
nnoremap <silent>fb <cmd>Telescope buffers<cr>
nnoremap <silent>fh <cmd>Telescope help_tags<cr>
"nnoremap <silent> <C-n> <cmd>Previous item<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    file_ignore_patterns = {"node_modules"},
  },
}
EOF
