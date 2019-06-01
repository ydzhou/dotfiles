call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'aming/vim-mason'

call plug#end()

" UI SETTING
syntax on
set background=light
color monocolor
autocmd InsertEnter,InsertLeave * set cul!

filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch

"set ruler
set laststatus=2
set statusline=[%03l,%03v][%p%%]\ %=%F%m%r%h%w%<\ [%{&ff}:%{&fenc!=''?&fenc:&enc}]\ [%Y]
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
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
"" easier moving of code block
vnoremap < <gv
vnoremap > >gv

""" Plugin Configurations

"" tagbar
nmap <C-g> :TagbarToggle<CR>
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_indent = 2

" CtrlP
let g:ctrlp_map = '<leader>.'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/Movies/*,*Pictures/*,*/Music/*,*/Library/*,*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.rvm$'
let g:ctrlp_max_height=15

" NerdTree
""tocmd vimenter * NERDTree
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"map <silent> <C-n> :NERDTreeToggle<CR> 
let NERDTreeIgnore=['\.$','\.pyc$','\.swp$','\~$']
"let g:NERDTreeMouseMode=3
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

map <silent> <C-n> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
