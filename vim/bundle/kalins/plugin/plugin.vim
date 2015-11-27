if exists("loaded_kalins") || &cp
  finish
endif
let g:loaded_kalins = 1

function! ReloadConfig()
  execute 'source $MYVIMRC'
  for f in split(glob('~/.vim/bundle/kalins/**/*.vim'), '\n')
    exe 'source' f
endfor
endfunction
