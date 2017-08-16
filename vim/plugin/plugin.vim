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

function DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
