let mapleader = ","
let maplocalleader = ","
:imap jj <Esc>

set nofoldenable
set number
set relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set splitbelow
set splitright
set clipboard=unnamed
set ruler
set autoread      " Reload files changed outside vim
" Trigger autoread when changing buffers or coming back to vim in terminal.
au FocusGained,BufEnter * :silent!
set ignorecase
set smartcase
set hlsearch
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching
set incsearch
set showmatch

" Softtabs, 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

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

" ALE
nmap <silent> <leader>k :ALENext<CR>
nmap <silent> <leader>j :ALEPrevious<CR>

" NETRW
autocmd filetype netrw nnoremap <buffer> <C-L> <C-W><C-L>
