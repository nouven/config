call plug#begin('~/.config/nvim/autoload/plugged')
" {{ file search }}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" {{ file browser }}
Plug 'scrooloose/NERDTree' " File Explorer
" {{ status bar }}
Plug 'itchyny/lightline.vim'
" {{ theme }}
Plug 'morhetz/gruvbox'
Plug 'miyakogi/seiya.vim' " clear and make transparent
"{{ code intellisense }}
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'folke/lsp-colors.nvim'
Plug 'onsails/lspkind-nvim'

Plug 'chun-yang/auto-pairs'
"Plug 'andrewradev/tagalong.vim'
" {{auto format code}}
Plug 'chiel92/vim-autoformat'
" {{ terminal }}
Plug 'voldikss/vim-floaterm'
" {{ code syntax highlight }}
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" {{ debugging }}

" {{icon}}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'


" {{ source code version control }}
call plug#end()

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}================




" {{  'scrooloose/NERDTree' " File Explorer }}==========================
nmap <C-n> :NERDTreeToggle<CR>
" 'neoclide/coc.nvim' ==================================

" {{  'morhetz/gruvbox' " gruvbox }}=================================
colorscheme gruvbox
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')
  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)
  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000
  return l:brightness > 155
endfunction

" 'miyakogi/seiya.vim' " clear and make transparent
let g:seiya_auto_enable=1
" 'itchyny/lightline.vim'
let g:lightline = {
         \ 'colorscheme': 'gruvbox',
         \ 'component_function': {
            \   'fileformat': 'LightlineFileformat',
            \   'filetype': 'LightlineFiletype',
            \ },
            \}

function! LightlineFileformat()
   return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction


filetype indent on
" :let g:html_indent_inctags ="body, head, tbody, script" "Indent body head
" :let g:html_indent_script1="inc"
" :let g:html_indent_style1="inc"
"vmap <C-y> "+y

"set backspace=indent,eol,start " Backspace behaviour
"let g:AutoPairsFlyMode = 1
"let g:user_emmet_mode='a'    "enable all function in all mode.

"{{  'Xuyuanp/nerdtree-git-plugin' }}
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


"{{ 'ryanoasis/vim-devicons' }}
"set guifont=<FONT_NAME> <FONT_SIZE>
set guifont=DroidSansMono\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1




