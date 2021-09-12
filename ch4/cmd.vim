command! -nargs=1 Greet call s:greet(<f-args>)
command! -bang Greet2 echo len('<bang>') ? 'Hi' : 'Hello'
command! -range ShowRange echo 'start=<line1> end=<line2>'

function! s:greet(str)
    echo 'Hello' . a:str
endfunction
