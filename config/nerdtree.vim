" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

nmap <C-n> :NERDTreeToggle<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
         \ 'Modified'  :'✹',
         \ 'Staged'    :'✚',
         \ 'Untracked' :'✭',
         \ 'Renamed'   :'➜',
         \ 'Unmerged'  :'═',
         \ 'Deleted'   :'✖',
         \ 'Dirty'     :'✗',
         \ 'Ignored'   :'☒',
         \ 'Clean'     :'✔︎',
         \ 'Unknown'   :'?',
         \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
