:imap jj <Esc>

map <SPACE> :
nmap J 5j
nmap K 5k

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <S-L> :tabn<CR>
nnoremap <S-H> :tabp<CR>
nnoremap <Esc> :noh<CR>

map ty "ty
map tp "tp

"nmap <C-]> <C-w>]<C-w>T
"nmap <D-p> :CtrlP<CR>
"nmap <C-r> :CtrlPBufTag<CR>
nmap <C-e> :CtrlPMRUFiles<CR>

" NETRW
autocmd filetype netrw nnoremap <buffer> <C-L> <C-W><C-L>
