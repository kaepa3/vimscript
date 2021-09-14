let s:save_cpo =&cpo
set cpo&vim

function! sweep#sweep()
    %substitute/\s\+$//
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
