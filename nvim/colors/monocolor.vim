" Last Change:	2014/05/23
" Modifier: Y. ZHOU

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "monocolor"

if &background == "dark"

" GUI:
highlight Comment	guifg=#909090 gui=italic ctermfg=8
highlight Cursor	guibg=#FFFFFF
highlight CursorLine 	guibg=#474747 ctermbg=236
highlight Error		guifg=#909090	guibg=#000000 ctermfg=8 ctermbg=white
highlight Visual	guifg=#FFFFFF	guibg=grey ctermfg=white ctermbg=grey
highlight LineNr guifg=#808080 ctermfg=8
highlight Folded guifg=#000000 ctermfg=black
highlight Pmenu  guifg=#FFFFFF guibg=#474747 ctermfg=white ctermbg=236

" Syntax:
highlight Normal guibg=#262626 guifg=#DADADA ctermbg=black ctermfg=253
highlight Constant 	guifg=#CCCCCC gui=bold ctermfg=252 cterm=bold
highlight Identifier	guifg=#FFFFFF gui=bold ctermfg=white cterm=bold
highlight PreProc 	guifg=#FFFFFF	gui=bold ctermfg=white cterm=bold
highlight Special	guifg=#FFFFFF	gui=bold ctermfg=white cterm=bold
highlight Statement	guifg=#FFFFFF	gui=bold,underline ctermfg=white cterm=bold
highlight Type 		guifg=#FFFFFF	gui=bold ctermfg=white cterm=bold

else

" GUI:
highlight Comment	guifg=#808080 gui=italic ctermfg=grey
highlight Cursor	guibg=#000000
highlight CursorLine 	guibg=#cccccc ctermbg=251
highlight Error		guifg=#808080	guibg=#000000 ctermfg=grey ctermbg=black
highlight Visual	guifg=#000000	guibg=grey ctermfg=black ctermbg=grey
highlight LineNr guifg=#808080 ctermfg=grey
highlight Folded guifg=#000000 ctermfg=black
highlight Pmenu  guifg=#000000 guibg=#cccccc ctermfg=black ctermbg=251

" Syntax:
highlight Normal guifg=#000000 ctermfg=black
highlight Constant 	guifg=#808080 gui=bold ctermfg=242 cterm=bold
highlight Identifier	guifg=#000000 gui=bold ctermfg=black cterm=bold
highlight PreProc 	guifg=#000000	gui=bold ctermfg=black cterm=bold
highlight Special	guifg=#000000	gui=bold ctermfg=black cterm=bold
highlight Statement	guifg=#000000	gui=bold,underline ctermfg=black cterm=bold
highlight Type 		guifg=#000000	gui=bold ctermfg=black cterm=bold

endif


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
"highlight! link Function	Identifier
highlight! link Ignore		Comment
highlight! link Include		PreProc
highlight! link IncSearch	Search
highlight! link Keyword		Identifier
"highlight! link Keyword		Identifier
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
