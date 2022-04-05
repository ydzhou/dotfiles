let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   Recent Files']            },
      \ { 'type': 'dir',       'header': ['   Recent Files in'. getcwd()] },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_bookmarks = [
            \ '~/dotfiles/vim/vimrc',
            \ '~/Developer',
            \ '~/Developer/ydzhou.github.io',
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
