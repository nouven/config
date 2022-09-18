call plug#begin('~/.config/nvim/autoload/plugged')
" {{ file search }}
"Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" {{ file browser }}
Plug 'scrooloose/NERDTree' " File Explorer
" {{ colorstheme }}
Plug 'nvim-lualine/lualine.nvim'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'svrana/neosolarized.nvim'
"Plug 'miyakogi/seiya.vim' " clear and make transparent
Plug 'folke/lsp-colors.nvim'

"{{ code intellisense }}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'onsails/lspkind-nvim'

Plug 'chun-yang/auto-pairs'
"Plug 'andrewradev/tagalong.vim'
" {{auto format code}}
Plug 'jose-elias-alvarez/null-ls.nvim'
" {{ terminal }}
Plug 'voldikss/vim-floaterm'
" {{ code syntax highlight }}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" {{ debugging }}

" {{icon}}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

Plug 'romgrk/barbar.nvim'

Plug 'rest-nvim/rest.nvim'

" {{ source code version control }}
call plug#end()


let g:seiya_auto_enable=1

" {{  'scrooloose/NERDTree' " File Explorer }}==========================
nmap <C-n> :NERDTreeToggle<CR>

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
set guifont=DroidSansMono\ Nerd\ Font\ 20
let g:airline_powerline_fonts = 3




