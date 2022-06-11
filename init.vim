set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/plugs.vim
"source ~/.config/nvim/config/lspconfig/lspconfig.rc.vim
source ~/.config/nvim/config/lspconfig/lsp-installer.lua
source ~/.config/nvim/config/lspconfig/lspsaga.rc.vim
source ~/.config/nvim/config/lspconfig/lspkind.lua
source ~/.config/nvim/config/lspconfig/lspcolors.vim
source ~/.config/nvim/config/lspconfig/null-ls.lua
source ~/.config/nvim/config/lspconfig/lsp-cmp.vim
source ~/.config/nvim/config/telescope.rc.vim
source ~/.config/nvim/config/colortheme.vim
source ~/.config/nvim/config/lualine.vim
source ~/.config/nvim/config/floaterm.vim
source ~/.config/nvim/config/treesitter.rc.vim


noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


syntax on     
set guioptions+=a
set encoding=UTF-8

set hlsearch 	" Highlight all search results
set hlsearch
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set cindent	" Use 'C' style program indenting
set expandtab	" Use spaces instead of tabs
set shiftwidth=2	" Number of auto-indent spaces
set softtabstop=2	" Number of spaces per Tab
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
"set cursorline

hi cursorline cterm=NONE ctermbg=NONE
hi Search cterm=bold ctermfg=black ctermbg=lightgrey
hi Visual cterm=none ctermfg=darkcyan ctermbg=darkgrey
