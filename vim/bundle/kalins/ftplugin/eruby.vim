if (exists("b:ftplugin"))
  finish
endif
let b:ftplugin = 1

set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

let b:surround_{char2nr('=')} = "<%= \r %>"
let b:surround_{char2nr('-')} = "<% \r %>"
