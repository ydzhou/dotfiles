" Vim-lsp
" Github repo: https://github.com/prabirshrestha/vim-lsp

" Global mapping
nmap <silent> gd <plug>(lsp-definition)
nmap <silent> ghd <plug>(lsp-peek-definition)
nmap <silent> gD <plug>(lsp-declaration)
nmap <silent> gi <plug>(lsp-implementation)
nmap <silent> ghi <plug>(lsp-peek-implementation)
nmap <silent> gh <plug>(lsp-hover)
nmap <silent> gr <plug>(lsp-references)
nmap <silent> gs <plug>(lsp-document-symbol)
nmap <silent> gS <plug>(lsp-workspace-symbol)
nmap <silent> gci <plug>(lsp-call-hierarchy-incoming)
nmap <silent> gco <plug>(lsp-call-hierarchy-outgoing)

" General configs
let g:lsp_diagnostics_echo_cursor = 0
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_diagnostics_signs_error = {'text' : '🧨'}
let g:lsp_diagnostics_signs_warning = {'text' : '⚠️'}
let g:lsp_diagnostics_signs_information = {'text': '💬'}
let g:lsp_diagnostics_signs_hint = {'text': '💡'}
let g:lsp_document_code_action_signs_hint = {'text': '💡'}
let g:lsp_hover_ui = 'preview'


" Auto completion
" Minimum char to autocomplete
let g:asyncomplete_min_chars = 0
" Auto popup
let g:asyncomplete_auto_popup = 1
" Disable auto config (which will override existing completopt settings)
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,preview
" Auto close popup after completion
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'allowlist': ['*'],
    \ 'blocklist': ['markdown'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))
