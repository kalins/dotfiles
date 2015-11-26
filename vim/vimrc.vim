syntax on
set nocompatible
let mapleader = ","

filetype off

" Pathogen
execute pathogen#infect()

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-afterimage'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

" Notes
let g:notes_directories = ['~/Documents/Notes']

" Easytags
set tags=./.tags;./tags;./.TAGS;./TAGS;
let g:easytags_dynamic_files = 1
let g:easytags_file = '~/.vim-gtags'
let g:easytags_by_filetype = expand("~/.vim-tags/")
let g:easytags_async = 1

" Swapfiles
set noswapfile
nmap <leader>vr :tabedit ~/dotfiles/vim/vimrc.vim<CR>
map <silent> <leader>vrr :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" YouCompleteMe
let g:ycm_auto_trigger = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_use_ultisnips_completer = 0
