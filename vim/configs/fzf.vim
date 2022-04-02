" FZF
map <silent> <Leader>f :Files<CR>
map <silent> <Leader>fl :Lines<CR>
map <silent> <Leader>fb :Buffers<CR>
map <silent> <Leader>fr :Rg<CR>
let $FZF_DEFAULT_COMMAND = "fd --type file"
let g:fzf_layout = { 'down':  '40%'}
let g:fzf_preview_window = []
