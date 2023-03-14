call plug#begin()
Plug 'tomtom/tcomment_vim'
Plug 'rakr/vim-one'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'windwp/nvim-autopairs'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ydzhou/simple-statusline.vim'
Plug 'ibhagwan/fzf-lua'
" Colorscheme
Plug 'cocopon/iceberg.vim'
Plug 'rakr/vim-one'
Plug 'overcache/NeoSolarized'
Plug 'lifepillar/vim-solarized8'
call plug#end()

lua require("custom/plugins")
lua require("custom/lsp")
lua require("custom/completion")
lua require("custom/keymaps")
lua require("custom/fzf")

set mouse=a
set noshowcmd
set autoread
set noswapfile

syntax on

set background=light
color solarized8

autocmd InsertEnter,InsertLeave * set cul!

filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase "hlsearch

"set ruler
set laststatus=2
set statusline=%!SimStatusline()
set display=lastline

set encoding=utf-8
set number
set signcolumn=number
"" standard keys for wrapped lines
set whichwrap+=<,>,[,]

set clipboard+=unnamed

""" Plugin Configurations

" Auto close when nvim-tree is the last window
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
