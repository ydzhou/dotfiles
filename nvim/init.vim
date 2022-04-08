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
Plug 'ydzhou/simple-statusline.vim', {'branch': 'main'}
" Colorscheme
Plug 'cocopon/iceberg.vim'
call plug#end()

lua require("_plugins")
lua require("_lsp")
lua require("_completion")

language zh_CN.UTF-8

set mouse=a

set autoread

" UI SETTING
syntax on

set background=dark
color iceberg

" autocmd InsertEnter,InsertLeave * set cul!

filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase "hlsearch

"set ruler
set laststatus=2
set statusline=%!SimStatusline()
set display=lastline

set encoding=utf-8
set number

let mapleader=","
map ; <C-d>
map ' <C-u>
map <silent> <Leader>, <C-o>
map <silent> <Leader>. <C-i>
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
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implemetation()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

" Auto close when nvim-tree is the last window
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
