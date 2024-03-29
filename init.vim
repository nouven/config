set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/base.lua
source ~/.config/nvim/plugs.vim
source ~/.config/nvim/config/keymaps.lua
"source ~/.config/nvim/config/lspconfig/lspconfig.rc.vim
source ~/.config/nvim/config/lspconfig/lsp-installer.lua
"source ~/.config/nvim/config/lspconfig/lspsaga.rc.vim
source ~/.config/nvim/config/lspconfig/lsp-saga.lua
source ~/.config/nvim/config/lspconfig/lspkind.lua 
source ~/.config/nvim/config/lspconfig/null-ls.lua
source ~/.config/nvim/config/lspconfig/lsp-cmp.vim
source ~/.config/nvim/config/telescope.rc.vim
source ~/.config/nvim/config/colortheme.vim
source ~/.config/nvim/config/lualine.vim
source ~/.config/nvim/config/floaterm.vim
source ~/.config/nvim/config/treesitter.rc.vim
source ~/.config/nvim/config/barbar.lua
source ~/.config/nvim/config/nvim-rest.lua
source ~/.config/nvim/config/nerdtree.vim





"noremap <Leader>y "*y
"noremap <Leader>p "*p
"noremap <Leader>Y "+y
"noremap <Leader>P "+p


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
set nowrap
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
"set textwidth=100  " Line wrap (number of cols)
set showmatch	" Highlight matching brace
set errorbells	" Beep or flash screen on errors
set visualbell	" Use visual bell (no beeping)
set autoindent
set smartindent
set mouse=a
set clipboard+=unnamedplus
set confirm	" Prompt confirmation dialogs
set ruler	" Show row and column ruler information
set autochdir	" Change working directory to open buffer
set autowriteall	" Auto-write all file changes
set undolevels=1000	" Number of undo levels
set background=dark
set hidden
"set laststatus=0
"set cursorline


hi Normal guibg=NONE 
set termguicolors
hi DiagnosticError guifg=Red
hi DiagnosticWarn  guifg=DarkOrange
hi DiagnosticInfo  guifg=Yellow
hi DiagnosticHint  guifg=Cyan
set signcolumn=number

hi LineNr guibg=none
hi Pmenu guibg=none guifg='#fd5e53' 
hi PmenuSel guibg=none guifg=cyan
hi PmenuSbar guibg=none guifg=none
hi PmenuThumb guibg=none guifg=none




"hi cursorline cterm=NONE ctermbg=none
"hi Search cterm=bold ctermfg=black ctermbg=lightgrey
"hi Visual cterm=none ctermfg=darkcyan ctermbg=darkgrey




"nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
"nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
"noremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>

