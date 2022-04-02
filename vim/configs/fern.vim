" Fern
" Github repo: https://github.com/lambdalisue/fern.vim

" Global trigger mapping
map <silent> <C-n> :Fern . -drawer -reveal=% -toggle<CR><C-w>=

" Disable netrw
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

" General configs
let g:fern#renderer = "nerdfont"
let g:fern#drawer_width = 40
let g:fern#disable_default_mappings = 1
let g:fern#disable_drawer_tabpage_isolation = 1

" Fern specific mapping
augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END
function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> o <Plug>(fern-action-open)
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> N <Plug>(fern-action-new-file)
  nmap <buffer> y <Plug>(fern-action-copy)
  nmap <buffer> p <Plug>(fern-action-paste)
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> D <Plug>(fern-action-remove)
  nmap <buffer> r <Plug>(fern-action-rename)
  nmap <buffer> H <Plug>(fern-action-hidden-toggle)j
  nmap <buffer> R <Plug>(fern-action-reload)
  nmap <buffer> <Space> <Plug>(fern-action-mark-toggle)j
  nmap <buffer><nowait> <Right> <Plug>(fern-action-open-or-enter)
  nmap <buffer><nowait> <Left> <Plug>(fern-action-leave)
endfunction
