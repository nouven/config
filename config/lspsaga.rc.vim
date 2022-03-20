lua << EOF
local saga = require 'lspsaga'
saga.init_lsp_saga{
   error_sign = "",
   warn_sign = "",
   hint_sign = "",
   infor_sign = "",
   diagnostic_header_icon = "   ",
   border_style = "round",
   code_action_prompt = {
      enable = true,
      sign = true,
      sign_priority = 50,
      virtual_text = true,
   },
}

EOF
noremap <silent> K :Lspsaga preview_definition<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
