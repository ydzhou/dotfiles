set bg=light
hi clear
syntax reset
let color_name="clearwhite"
set t_Co=256
hi Normal		ctermfg=234 ctermbg=255		guifg=#1c1c1c guibg=#eeeeee
hi CursorLine	cterm=none ctermbg=254		gui=none guibg=#e4e4e4
hi ErrorMsg		ctermfg=234 ctermbg=255		guifg=#1c1c1c guibg=#eeeeee
hi Visual		cterm=reverse ctermfg=25	gui=reverse guifg=#005faf
hi VisualNOS	cterm=reverse,underline		gui=reverse,underline
hi Todo			ctermfg=245					guifg=#8a8a8a
hi Search		ctermfg=17 ctermbg=253		guifg=#00005f guibg=#dadada
hi IncSearch	ctermfg=172 ctermbg=17		guifg=#d78700 guibg=#00005f
hi SpecialKey	ctermfg=234					gui=none guifg=#1c1c1c
hi Directory	ctermfg=234					gui=none guifg=#1c1c1c
hi Title		ctermfg=234					gui=none guifg=#1c1c1c
hi WarningMsg	ctermfg=234					guifg=#1c1c1c
hi WildMenu		ctermfg=234					guifg=#1c1c1c
hi ModeMsg		ctermfg=234					guifg=#1c1c1c
hi MoreMsg		ctermfg=234					guifg=#1c1c1c
hi Question		ctermfg=234					guifg=#1c1c1c
hi NonText		ctermfg=234					guifg=#1c1c1c
hi StatusLine	ctermfg=25					guifg=#005faf
hi StatusLineNC	ctermfg=251					guifg=#c6c6c6
hi VertSplit	ctermfg=251					guifg=#c6c6c6
hi Folded		ctermfg=234 ctermbg=255		guifg=#1c1c1c guibg=#eeeeee
hi FoldColumn	ctermfg=255 ctermbg=251		guifg=#eeeeee guibg=#c6c6c6
hi LineNr		ctermfg=250					guifg=#bcbcbc
hi DiffAdd		ctermfg=237 ctermbg=247		guifg=#3a3a3a guibg=#9e9e9e
hi DiffChange	ctermfg=237 ctermbg=247		guifg=#3a3a3a guibg=#9e9e9e
hi DiffDelete	ctermfg=237 ctermbg=247		guifg=#3a3a3a guibg=#9e9e9e
hi DiffText		ctermfg=237					guifg=#3a3a3a
hi Comment		ctermfg=243					guifg=#767676
hi Constant		ctermfg=243					guifg=#767676
hi Special		ctermfg=17					gui=none guifg=#00005f
hi Identifier	ctermfg=17					gui=none guifg=#00005f
hi Statement	ctermfg=17					gui=none guifg=#00005f
hi PreProc		ctermfg=234					gui=none guifg=#1c1c1c
hi type			ctermfg=17					gui=none guifg=#00005f
hi Underlined	ctermfg=234					guifg=#1c1c1c
hi Ignore		ctermfg=234					guifg=#1c1c1c
hi MatchParen	ctermbg=250					guibg=#bcbcbc
