if exists("g:moria_style")
    let s:moria_style = g:moria_style
else
    let s:moria_style = &background
endif

execute "command! -nargs=1 Colo let g:moria_style = \"<args>\" | colo moria"

if s:moria_style == 'dark'
    set background=dark
elseif s:moria_style == 'light'
    set background=light
else
    let s:moria_style = &background 
endif

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "moria"

if s:moria_style == "dark"
    hi Normal ctermbg=0 ctermfg=7 guibg=#202020 ctermbg=234 guifg=#d0d0d0 ctermfg=252 gui=none
    hi Cursor guibg=#ffa500 ctermbg=214 guifg=bg gui=none
    hi CursorColumn guibg=#444444 ctermbg=238 gui=none
    hi CursorLine guibg=#444444 ctermbg=238 gui=none
    hi DiffAdd guibg=#008b00 ctermbg=28 guifg=fg gui=none
    hi DiffChange guibg=#00008b ctermbg=18 guifg=fg gui=none
    hi DiffDelete guibg=#8b0000 ctermbg=88 guifg=fg gui=none
    hi DiffText guibg=#0000cd ctermbg=20 guifg=fg gui=bold cterm=bold
    hi Directory guibg=bg guifg=#1e90ff ctermfg=33 gui=none
    hi ErrorMsg guibg=#ee2c2c ctermbg=9 guifg=#ffffff ctermfg=15 gui=bold cterm=bold
    hi FoldColumn ctermbg=bg guibg=bg guifg=#a0b0c0 ctermfg=145 gui=none
    hi Folded guibg=#585858 ctermbg=240 guifg=#c0d0e0 ctermfg=152 gui=none
    hi IncSearch guibg=#e0cd78 ctermbg=186 guifg=#000000 ctermfg=0 gui=none
    hi LineNr guifg=#a0b0c0 ctermfg=145 gui=none
    hi ModeMsg guibg=bg guifg=fg gui=bold cterm=bold
    hi MoreMsg guibg=bg guifg=#d0d097 ctermfg=186 gui=bold cterm=bold
    hi NonText ctermfg=8 guibg=bg guifg=#a0b0c0 ctermfg=145 gui=bold cterm=bold
    hi Pmenu guibg=#8090a0 ctermbg=103 guifg=#000000 ctermfg=0 gui=none
    hi PmenuSbar guibg=#607080 ctermbg=60 guifg=fg gui=none
    hi PmenuSel guibg=#e0e000 ctermbg=184 guifg=#000000 ctermfg=0 gui=none
    hi PmenuThumb guibg=#c0d0e0 ctermbg=152 guifg=bg gui=none
    hi Question guibg=bg guifg=#e0c07e ctermfg=180 gui=bold cterm=bold
    hi Search guibg=#90e090 ctermbg=114 guifg=#000000 ctermfg=0 gui=none
    hi SignColumn ctermbg=bg guibg=bg guifg=#a0a0a0 ctermfg=247 gui=none
    hi SpecialKey guibg=bg guifg=#e0c07e ctermfg=180 gui=none
    if has("spell")
        hi SpellBad guisp=#ee2c2c gui=undercurl cterm=undercurl
        hi SpellCap guisp=#2c2cee gui=undercurl cterm=undercurl
        hi SpellLocal guisp=#2ceeee gui=undercurl cterm=undercurl
        hi SpellRare guisp=#ee2cee gui=undercurl cterm=undercurl
    endif
    hi StatusLine ctermbg=7 ctermfg=0 guibg=#485868 ctermbg=240 guifg=fg gui=bold cterm=bold
    hi StatusLineNC ctermbg=8 ctermfg=0 guibg=#304050 ctermbg=238 guifg=fg gui=none
    hi TabLine guibg=#566676 ctermbg=60 guifg=fg gui=underline cterm=underline
    hi TabLineFill guibg=#c0d0e0 ctermbg=152 guifg=bg gui=none
    hi TabLineSel guibg=bg guifg=fg gui=bold cterm=bold
    hi Title ctermbg=0 ctermfg=15 guifg=fg gui=bold cterm=bold
    hi VertSplit ctermbg=7 ctermfg=0 guibg=#304050 ctermbg=238 guifg=fg gui=none
    if version >= 700
        hi Visual ctermbg=7 ctermfg=0 guibg=#607080 ctermbg=60 gui=none
    else
        hi Visual ctermbg=7 ctermfg=0 guibg=#607080 ctermbg=60 guifg=fg gui=none
    endif
    hi VisualNOS guibg=bg guifg=#90a0b0 ctermfg=109 gui=bold,underline cterm=bold,underline
    hi WarningMsg guibg=bg guifg=#ee2c2c ctermfg=9 gui=bold cterm=bold
    hi WildMenu guibg=#e0e000 ctermbg=184 guifg=#000000 ctermfg=0 gui=bold cterm=bold

    hi Comment guibg=bg guifg=#d0d0a0 ctermfg=187 gui=none
    hi Constant guibg=bg guifg=#87df71 ctermfg=113 gui=none
    hi Error guibg=bg guifg=#ee2c2c ctermfg=9 gui=none
    hi Identifier guibg=bg guifg=#7ee0ce ctermfg=116 gui=none
    hi Ignore guibg=bg guifg=bg gui=none
    hi lCursor guibg=#00e700 ctermbg=40 guifg=#000000 ctermfg=0 gui=none
    hi MatchParen guibg=#008b8b ctermbg=30 gui=none
    hi PreProc guibg=bg guifg=#d7a0d7 ctermfg=182 gui=none
    hi Special guibg=bg guifg=#e0c07e ctermfg=180 gui=none
    hi Statement guibg=bg guifg=#7ec0ee ctermfg=111 gui=none
    hi Todo guibg=#e0e000 ctermbg=184 guifg=#000000 ctermfg=0 gui=none
    hi Type guibg=bg guifg=#f09479 ctermfg=210 gui=none
    hi Underlined guibg=bg guifg=#00a0ff ctermfg=39 gui=underline cterm=underline

    hi htmlBold ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold cterm=bold
    hi htmlItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=italic cterm=italic
    hi htmlUnderline ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=underline cterm=underline
    hi htmlBoldItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold,italic cterm=bold,italic
    hi htmlBoldUnderline ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold,underline cterm=bold,underline
    hi htmlBoldUnderlineItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold,underline,italic cterm=bold,underline,italic
    hi htmlUnderlineItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=underline,italic cterm=underline,italic
elseif s:moria_style == "light"
    hi Normal ctermbg=15 ctermfg=0 gui=none

    hi Cursor ctermbg=166 guifg=bg gui=none
    hi CursorColumn ctermbg=253 gui=none
    hi CursorLine ctermbg=253 gui=none
    hi DiffAdd ctermbg=28 guifg=#ffffff ctermfg=15 gui=none
    hi DiffChange ctermbg=18 guifg=#ffffff ctermfg=15 gui=none
    hi DiffDelete ctermbg=88 guifg=#ffffff ctermfg=15 gui=none
    hi DiffText ctermbg=20 guifg=#ffffff ctermfg=15 gui=bold cterm=bold
    hi Directory guibg=bg ctermfg=4 gui=none
    hi ErrorMsg ctermbg=9 ctermfg=15 gui=bold cterm=bold
    hi FoldColumn ctermbg=bg guibg=bg gui=none
    hi Folded ctermbg=251 guifg=fg gui=none
    hi IncSearch ctermbg=222 gui=none
    hi LineNr ctermfg=59 gui=none
    hi ModeMsg ctermbg=15 ctermfg=0 guibg=bg guifg=fg gui=bold cterm=bold
    hi MoreMsg guibg=bg ctermfg=24 gui=bold cterm=bold
    hi NonText ctermfg=8 guibg=bg ctermfg=59 gui=bold cterm=bold
    hi Pmenu ctermbg=103 ctermfg=0 gui=none
    hi PmenuSbar ctermbg=66 guifg=fg gui=none
    hi PmenuSel ctermbg=11 ctermfg=0 gui=none
    hi PmenuThumb ctermbg=146 guifg=fg gui=none
    hi Question ctermfg=94 cterm=bold
    hi Search ctermbg=157
    hi SignColumn ctermbg=bg ctermfg=242
    hi SpecialKey ctermfg=88
    if has("spell")
        hi SpellBad guisp=#ee2c2c gui=undercurl cterm=undercurl
        hi SpellCap guisp=#2c2cee gui=undercurl cterm=undercurl
        hi SpellLocal guisp=#008b8b gui=undercurl cterm=undercurl
        hi SpellRare guisp=#ee2cee gui=undercurl cterm=undercurl
    endif
    hi StatusLine ctermbg=0 ctermfg=15 guibg=#a8b8c8 ctermbg=146 guifg=fg gui=bold cterm=bold
    hi StatusLineNC ctermbg=7 ctermfg=0 guibg=#b8c8d8 ctermbg=152 guifg=fg gui=none
    hi TabLine guibg=#b4c4d4 ctermbg=152 guifg=fg gui=underline cterm=underline
    hi TabLineFill guibg=fg guifg=bg gui=none
    hi TabLineSel guibg=bg guifg=fg gui=bold cterm=bold
    hi Title guifg=fg gui=bold cterm=bold
    hi VertSplit ctermbg=7 ctermfg=0 guibg=#b8c8d8 ctermbg=152 guifg=fg gui=none
    if version >= 700
        hi Visual ctermbg=7 ctermfg=0 guibg=#c8d8e8 ctermbg=188 gui=none
    else
        hi Visual ctermbg=7 ctermfg=0 guibg=#c8d8e8 ctermbg=188 guifg=fg gui=none
    endif    
    hi VisualNOS guibg=bg guifg=#90a0b0 ctermfg=109 gui=bold,underline cterm=bold,underline
    hi WarningMsg guibg=bg guifg=#ee2c2c ctermfg=9 gui=bold cterm=bold
    hi WildMenu guibg=#ffff00 ctermbg=11 guifg=fg gui=bold cterm=bold

    hi Comment guibg=bg guifg=#786000 ctermfg=94 gui=none
    hi Constant guibg=bg guifg=#077807 ctermfg=28 gui=none
    hi Error guibg=bg guifg=#ee2c2c ctermfg=9 gui=none
    hi Identifier guibg=bg guifg=#007080 ctermfg=24 gui=none
    hi Ignore guibg=bg guifg=bg gui=none
    hi lCursor guibg=#008000 ctermbg=28 guifg=#ffffff ctermfg=15 gui=none
    hi MatchParen guibg=#00ffff ctermbg=14 gui=none
    hi PreProc guibg=bg guifg=#800090 ctermfg=90 gui=none
    hi Special guibg=bg guifg=#912f11 ctermfg=88 gui=none
    hi Statement guibg=bg guifg=#1f3f81 ctermfg=24 gui=bold cterm=bold
    hi Todo guibg=#ffff00 ctermbg=11 guifg=fg gui=none
    hi Type guibg=bg guifg=#912f11 ctermfg=88 gui=bold cterm=bold
    hi Underlined guibg=bg guifg=#0000cd ctermfg=20 gui=underline cterm=underline

    hi htmlBold guibg=bg guifg=fg gui=bold cterm=bold
    hi htmlItalic guibg=bg guifg=fg gui=italic cterm=italic
    hi htmlUnderline guibg=bg guifg=fg gui=underline cterm=underline
    hi htmlBoldItalic guibg=bg guifg=fg gui=bold,italic cterm=bold
    hi htmlBoldUnderline guibg=bg guifg=fg gui=bold,underline cterm=bold
    hi htmlBoldUnderlineItalic guibg=bg guifg=fg gui=bold,underline,italic cterm=bold,underline,italic
	hi htmlUnderlineItalic guibg=bg guifg=fg gui=underline,italic cterm=underline,italic
endif
