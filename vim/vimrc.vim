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
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-afterimage'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Notes
let g:notes_directories = ['~/Documents/Notes']

" Swapfiles
set noswapfile
nmap <leader>vr :tabedit ~/dotfiles/vim/vimrc.vim<CR>
map <silent> <leader>vrr :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
