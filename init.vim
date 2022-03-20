set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/plugs.vim
source ~/.config/nvim/config/lspconfig.rc.vim
source ~/.config/nvim/config/lspsaga.rc.vim
source ~/.config/nvim/config/cmp.rc.vim
source ~/.config/nvim/config/telescope.rc.vim
source ~/.config/nvim/config/lsp-colors.rc.vim
source ~/.config/nvim/config/lsp-colors.rc.vim
source ~/.config/nvim/config/lspkind.lua
"source ~/.config/nvim/config/coc.vim
"source ~/.config/nvim/config/treesitter.rc.vim

" base settup

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


syntax on     
set guioptions+=a
set encoding=UTF-8
"set guifont=DroidSansMono

set hlsearch 	" Highlight all search results
set hlsearch
hi Search ctermbg=DarkYellow
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set cindent	" Use 'C' style program indenting
set expandtab	" Use spaces instead of tabs
set shiftwidth=3	" Number of auto-indent spaces
set softtabstop=3	" Number of spaces per Tab
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set expandtab     " use spaces Instead of tabs
set number	" Show line numbers
set relativenumber
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100  " Line wrap (number of cols)
set showmatch	" Highlight matching brace
set errorbells	" Beep or flash screen on errors
set visualbell	" Use visual bell (no beeping)
set autoindent
set smartindent
set mouse=a
set clipboard=unnamedplus
set confirm	" Prompt confirmation dialogs
set ruler	" Show row and column ruler information
set autochdir	" Change working directory to open buffer
set autowriteall	" Auto-write all file changes
set undolevels=1000	" Number of undo levels
set background=dark
set hidden
set cursorline
hi cursorline cterm=NONE ctermbg=NONE
hi Visual cterm=bold ctermfg=cyan ctermbg=darkgray
lua << EOF
EOF
