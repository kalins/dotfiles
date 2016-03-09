" NERDTree
nmap <D-3> :execute 'NERDTreeToggle'<CR>
nmap <F3> :execute 'NERDTreeToggle'<CR>

" Tagbar
nmap <D-4> :execute 'TagbarToggle'<CR>

:imap jj <Esc>
:imap <C-j> <Esc>
map <SPACE> :
nmap J 5j
nmap K 5k
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
" map <C-j> o<Esc>
" map <C-k> O<Esc>
map <C-j> <C-W>j<Esc>
map <C-k> <C-W>k<Esc>
map ty "ty
map tp "tp

nmap <C-]> <C-w>]<C-w>T

function! BuildTags()
  silent !clear
  execute "!ctags -R --exclude=.git $GEM_HOME/gems/* ./*"
endfunction
