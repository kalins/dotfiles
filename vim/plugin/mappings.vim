" NERDTree
nmap <D-3> :execute 'NERDTreeToggle'<CR>
nmap <F3> :execute 'NERDTreeToggle'<CR>

nmap <leader>vr :e $MYVIMRC<CR>
map <silent> <leader>vrr :call ReloadConfig()<CR>:exe ":echo 'vimrc reloaded'"<CR>
"map <silent> <leader>vrr :so $MYVIMRC<CR>:exe ":echo 'vimrc reloaded'"<CR>

:imap jj <Esc>

map <SPACE> :
nmap J 5j
nmap K 5k

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

map ty "ty
map tp "tp

"nmap <C-]> <C-w>]<C-w>T
nmap <D-p> :CtrlP<CR>
nmap <D-r> :CtrlPBufTag<CR>
nmap <D-e> :CtrlPMRUFiles<CR>

"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap () ()
"inoremap [ []<left>
"inoremap { {}<Left>
"inoremap {<CR> {<CR>}<Esc>O<TAB>

function! BuildTags()
  silent !clear
  execute "!ctags -R --exclude=.git $GEM_HOME/gems/* ./*"
endfunction
