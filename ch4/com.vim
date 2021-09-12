function! CompleteBuzz1()
    if getline('.')[:col('.')] =~# 'fizz$'
        normal! abuzz
    endif
endfunction

function! CompleteBuzz2()
    if getline('.')[:col('.')] =~# 'fizz$'
        normal! abuzz
    endif
endfunction

function! CompleteBuzz3()
    if getline('.')[:col('.')] =~# 'fizz$'
        normal! abuzz
    endif
    return ""
endfunction

function! CompleteBuzz4()
    if getline('.')[:col('.')-2] =~# 'fizz$'
        normal! abuzz
    endif
    return ""
endfunction

inoremap <C-L> <C-G>u<ESC>:call CompleteBuzz1()<CR>a
inoremap <C-M> <C-O>:call CompleteBuzz2()<CR>
inoremap <C-E> <C-R>=CompleteBuzz3()<CR>
inoremap <expr> <C-Y>CompleteBuzz4()<CR>


