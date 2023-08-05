function! fd#fdInVim() abort
    let user_input = input('Search Files>')
    let l:cmd = 'fd ' . user_input
    let l:result = systemlist(l:cmd)

    if v:shell_error == 0 && !empty(l:result)
        call setqflist(map(copy(l:result), '{"filename": v:val}'))
        copen
    else
        echo 'No files found.
    endif
endfunction
