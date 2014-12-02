if !has('gui_macvim')
  finish
endif

let Tlist_Ctags_Cmd="`brew --prefix`/bin/ctags"
