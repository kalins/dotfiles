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
set tabstop=8
set linespace=4
set listchars=eol:$,tab:>-

set splitbelow
set splitright

"set complete=.,w,b,u

" Styles
colorscheme solarized
set background=dark
let g:airline_solarized_bg='dark'
"set macligatures

if has('gui_running')
  hi LineNr guibg=bg
  hi vertsplit guifg=bg guibg=bg
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12

  set transparency=10
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
  set guioptions-=e

else
  set t_Co=256
  let g:solarized_termcolors=256
  hi Normal ctermbg=NONE
end

" NERDTree
let g:NERDTreeHijackNetrw=0
let g:NERDTreeWinSize=35

" CtrlP
