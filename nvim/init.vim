call plug#begin()
Plug 'tomtom/tcomment_vim'
Plug 'rakr/vim-one'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'windwp/nvim-autopairs'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua require("_plugins")
lua require("_lsp")
lua require("_completion")

language zh_CN.UTF-8

set mouse=a

set autoread

" UI SETTING
syntax on

color one
set background=light

" autocmd InsertEnter,InsertLeave * set cul!

filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase "hlsearch

"set ruler
set laststatus=2
set statusline=%03l,%03v\ %p%%\ %=%F%m%r%h%w%<
set display=lastline

set encoding=utf-8
set number

let mapleader=","
map ; <C-d>
map ' <C-u>
"" standard keys for wrapped lines
set whichwrap+=<,>,[,]
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
"" easier moving of code block
vnoremap < <gv
vnoremap > >gv

""" Plugin Configurations
" Nvim-Tree
nnoremap <C-n> :NvimTreeToggle<CR>

" TComment
"let g:tcommentOptions = {'whitespace' : 'no'}
map <silent> <Leader>c :TComment<CR>

" Code navigation shortcuts
" as found in :help lsp
nnoremap <silent> <Leader>d <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <Leader>h <cmd>lua vim.lsp.buf.hover()<CR>

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
