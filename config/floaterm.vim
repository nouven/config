
nnoremap   <silent>   <F6>   :FloatermToggle<CR>
tnoremap   <silent>   <F6>   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>    :FloatermNew <CR>
tnoremap   <silent>   <F12>    <C-\><C-n>:FloatermNew<CR>
noremap   <silent>   <F12>    <C-\><C-n>:FloatermNew<CR>
let g:floaterm_position='topright'
let g:floaterm_width=0.8
let g:floaterm_height=0.7
let g:floaterm_title='Term $1/$2'
let g:floaterm_wintype='float'
let g:floaterm_rootmarkers=['.pro']
let g:floaterm_shell = 'bash'
highlight Floaterm guibg=black
highlight FloatermNC guibg=red
highlight FloatermBorder guibg=red guifg=cyan

