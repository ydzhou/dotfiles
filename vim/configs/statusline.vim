function! SimStatusline() abort
	let focused = g:statusline_winid == win_getid(winnr())
    if !focused
        return ''
    endif    
    if mode() == 'n'
        let modeSymbol = '🔏'
    elseif mode() == 'i'
        let modeSymbol = '🖌'
    else
        let modeSymbol = '🔎'
    endif
    let statusline = modeSymbol . " %03l,%03v %p%% %<%=%{WebDevIconsGetFileTypeSymbol()}%F%m%r%h%w"
	return statusline
endfunction

function! BufferStatusline() abort
	let focused = g:statusline_winid == win_getid(winnr())
    if !focused
        return ''
    endif    
    if mode()=='n'
        return '缓冲区 ' . BufferList()
    endif    
    let statusline = '%03l,%03v %p%% %<%=%{WebDevIconsGetFileTypeSymbol()}%F%m%r%h%w'
	return statusline
endfunction

function! BufferList() abort
    let bufline = ''
    for bufinfo in getbufinfo({'buflisted': 1})
        let bufline = bufline . bufinfo.bufnr . ':'
        if exists('*WebDevIconsGetFileTypeSymbol')
            let bufline = bufline . WebDevIconsGetFileTypeSymbol(bufinfo.name)
        endif
        let bufline = bufline . fnamemodify(bufinfo.name, ':t') . ' '
    endfor
    return bufline
endfunction
