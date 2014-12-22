if (exists("b:ftplugin"))
  finish
endif
let b:ftplugin = 1

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

let b:surround_{char2nr('=')} = "=>\r"
let b:surround_{char2nr('-')} = "->\r"

:imap  ->
:imap <C-=> =>
