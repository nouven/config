lua << EOF
local saga = require 'lspsaga'
saga.init_lsp_saga{
-- default value
-- use_saga_diagnostic_sign = true
error_sign = '✗',
warn_sign = '',
hint_sign = '',
infor_sign = '',
--dianostic_header_icon = '',
code_action_icon = ' ',
code_action_prompt = {
   enable = true,
   sign = true,
   sign_priority = 50,
   virtual_text = true,
 },
   finder_definition_icon = '  ',
 finder_reference_icon = '  ',
 max_preview_lines = 50, -- preview lines of lsp_finder and definition preview
 finder_action_keys = {
   open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
 },
-- code_action_keys = {
--   quit = 'q',exec = '<CR>'
-- },
-- rename_action_keys = {
--   quit = '<C-c>',exec = '<CR>'  -- quit can be a table
-- },
definition_preview_icon = '  ',
-- "single" "double" "round" "plus"
border_style = "round",
rename_prompt_prefix = '➤',
-- if you don't use nvim-lspconfig you must pass your server name and
-- the related filetypes into this table
-- like server_filetype_map = {metals = {'sbt', 'scala'}}
-- server_filetype_map = {}
}

EOF
noremap <silent> K :Lspsaga preview_definition<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
