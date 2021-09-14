if exists('g:loaded_sweep')
    finish
endif

let g:loaded_sweep = 1

let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo

