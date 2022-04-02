" CtrlP

let g:ctrlp_map = '<Leader>f'
map <silent> <Leader>fl :CtrlPLine<CR>
map <silent> <Leader>fb :CtrlPBuffer<CR>

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:btt,min:5,max:20,results:20'
let g:webdevicons_enable_ctrlp = 1
let g:ctrlp_by_filename = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_user_command_async = 0
let g:ctrlp_clear_cache_on_exit = 1
" Set max files to 0 to indicate that CtrP scores all the candidates
let g:ctrlp_max_files = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|\.hg$\|\.svn$\|Library$\|Applications$\|Movies$\|Pictures$\|Music$\|Downloads$\|go/pkg$\|tmp$',
            \ 'file': '\.zip$\|\.so$\|\.o$\|\.obj$\|\.class$\|\.DS_Store$'
            \}
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob "" --ignore-file ~/dotfiles/ignore'
endif
