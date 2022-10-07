call plug#begin('~/.config/nvim/autoload/plugged')
" {{ file search }}
"Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" {{ file browser }}
"Plug 'scrooloose/NERDTree' " File Explorer
Plug 'preservim/nerdtree'
" {{ colorstheme }}
Plug 'nvim-lualine/lualine.nvim'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'svrana/neosolarized.nvim'

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









