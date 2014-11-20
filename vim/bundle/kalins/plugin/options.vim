set nofoldenable
set smartindent
set autoindent
set number
set relativenumber
set ruler
set incsearch
set showcmd

" Styles
set background=dark

if has('gui_running')
  colorscheme solarized
  set transparency=20
else
  set t_Co=256
  let g:solarized_termcolors=256
  colorscheme solarized
end
