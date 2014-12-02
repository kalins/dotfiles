" NERDTree
nmap <D-3> :execute 'NERDTreeToggle'<CR>
nmap <F3> :execute 'NERDTreeToggle'<CR>

:imap jj <Esc>
map <SPACE> :
nmap J 5j
nmap K 5k
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

nmap <C-]> <C-w>]<C-w>T

function! BuildTags()
  silent !clear
  execute "!ctags -R --exclude=.git $GEM_HOME/gems/* ./*"
endfunction
