let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   Recent Files']            },
      \ { 'type': 'dir',       'header': ['   Recent Files in'. getcwd()] },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_bookmarks = [
            \ '~/dotfiles/vim/vimrc',
            \ '~/Dev',
            \ '~/Dev/switchboard',
            \ '~/Dev/api-gateway',
            \]

let g:startify_files_number = 6
let g:startify_change_to_dir = 1
" When changing directory, to seek the root directory indicated by git
let g:startify_change_to_vcs_root = 1
let g:startify_custom_header =
          \ 'startify#center(startify#fortune#quote())'

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_custom_header_quotes = [
            \ ['饮马渡秋水，水寒风似刀','平沙日未没，黯黯见临洮','昔日长城战，咸言意气高','黄尘足今古，白骨乱蓬蒿'],
            \]
