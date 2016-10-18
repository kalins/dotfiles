if (exists("b:ftplugin"))
  finish
endif

let b:ftplugin = 1
set re=1

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

let b:surround_{char2nr('=')} = "=>\r"
let b:surround_{char2nr('-')} = "->\r"

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
noremap <Leader>nf :call PhpExpandClass()<CR>

:imap  ->
:imap <C-=> =>
