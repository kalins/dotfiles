if exists("loaded_kalins") || &cp
  finish
endif
let g:loaded_kalins = 1

function! ReloadConfig()
  execute 'source $MYVIMRC'
  for f in split(glob('~/.vim/plugin/*.vim'), '\n')
    exe 'source' f
  endfor
  for f in split(glob('~/.vim/ftplugin/*.vim'), '\n')
    exe 'source' f
  endfor
endfunction
