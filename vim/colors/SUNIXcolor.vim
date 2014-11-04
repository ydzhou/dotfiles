" Last Change:	2014/09/27
" Author: Y. ZHOU

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "sunix-color"

" GUI:
highlight Comment	guifg=#808080 gui=italic ctermfg=008
highlight Cursor	guibg=#000000
highlight CursorLine 	guibg=#cccccc ctermbg=251
highlight Error		guifg=#000000	guibg=#800000 ctermfg=000 ctermbg=001
highlight Visual	guifg=#000000	guibg=grey ctermfg=black ctermbg=grey
highlight LineNr guifg=#808080 ctermfg=grey

" Syntax:
highlight Normal guifg=#000000 ctermfg=black
highlight Constant 	guifg=#008700 gui=bold ctermfg=028 cterm=bold
highlight Identifier	guifg=#800000 gui=bold ctermfg=004 cterm=bold
highlight PreProc 	guifg=#000080	gui=bold ctermfg=004 cterm=bold
highlight Special	guifg=#005f00	gui=bold ctermfg=022 cterm=bold
highlight Statement	guifg=#0000af	gui=bold ctermfg=019 cterm=bold
highlight Type 		guifg=#0000af	gui=bold ctermfg=019 cterm=bold

" Links
highlight! link Search		Visual
highlight! link NonText 	Normal
highlight! link Macro		PreProc
highlight! link Boolean		Constant
highlight! link Character	Constant
highlight! link Conditional	Statement
highlight! link CursorColumn	CursorLine
highlight! link Debug		PreProc	
highlight! link Define		PreProc
highlight! link Delimiter	Identifier
highlight! link Directory	Statement
highlight! link ErrorMsg	Error
highlight! link Exception	Statement
highlight! link Float		Constant
highlight! link FoldColumn	Folded
highlight! link Function	Identifier
highlight! link Ignore		Comment
highlight! link Include		PreProc
highlight! link IncSearch	Search
highlight! link Keyword		Identifier
highlight! link Label		Statement
highlight! link LineNr		LineNr
highlight! link MatchParen	Statement
highlight! link MoreMsg		Identifier
highlight! link NonText		Comment
highlight! link Number		Constant
highlight! link Operator	Identifier
highlight! link Question	MoreMsg
highlight! link PreCondit	PreProc
highlight! link Repeat		Statement
highlight! link SignColumn	Identifier
highlight! link SpecialChar	Special
highlight! link SpecialComment	Special
highlight! link SpecialKey	Special
highlight! link SpellBad	Error
highlight! link SpellCap	Error
highlight! link SpellLocal	Error
highlight! link SpellRare	Error
highlight! link StorageClass	Type
highlight! link String		Constant
highlight! link Structure	Type
highlight! link Title		Structure
highlight! link Todo		Error
highlight! link Typedef		Type
highlight! link WarningMsg	Error
