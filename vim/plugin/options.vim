set nofoldenable
set smartindent
set autoindent
set number
set relativenumber
set ruler
set incsearch
set showcmd
set laststatus=2
set noswapfile
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set linespace=4
set listchars=eol:$,tab:>-
set foldmethod=indent
set ignorecase
set smartcase

set splitbelow
set splitright

"set complete=.,w,b,u

" Styles

if has('gui_running')
  hi LineNr guibg=bg
  hi vertsplit guifg=bg guibg=bg
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
  colorscheme solarized
  set background=dark
  let g:airline_solarized_bg='dark'

  set transparency=10
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
  set guioptions-=e

else
  set t_Co=256
  let g:solarized_termcolors=256
  colorscheme solarized
  set background=dark
  let g:airline_solarized_bg='dark'
  hi Normal ctermbg=NONE
end

" NERDTree
let g:NERDTreeHijackNetrw=0
let g:NERDTreeWinSize=35

" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=./.vimundo/
