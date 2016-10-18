syntax on
set nocompatible
let mapleader = ","

filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-afterimage'
Plugin 'tpope/vim-eunuch'
Plugin 'jiangmiao/auto-pairs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rking/ag.vim'
Plugin 'pangloss/vim-javascript'

Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'SirVer/ultisnips'
Plugin 'xolox/vim-easytags'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'joonty/vdebug'

call vundle#end()            " required
filetype plugin indent on    " required


"----------- PLUGINS -----------"
"
" CtrlP
"

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|\.sass-cache|bower_components|build)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"
" Notes
"

let g:notes_directories = ['~/Documents/Notes']


"
" php-cs-fixer
"

let g:php_cs_fixer_level = "psr2"
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"
" PDV
"

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"
" PDV
"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"
" Easytags
"

set tags=./.tags
" let g:easytags_by_filetype = getcwd() . '/.tags/'
let g:easytags_by_filetype = './.tags/'
let g:easytags_async = 1
let g:easytags_dynamic_files = 1

"
" Syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_js_checkers = ['jshint']
let g:syntastic_php_phpcs_args = '--standard=PSR2'
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"let g:syntastic_auto_loc_list = 1

"
" vim-airline
"

let g:airline_powerline_fonts = 1


"let g:vdebug_options["path_maps"] = {"/var/www": "/Users/kalinstefanov/Sites"}

"vim-mustache-handlebars
"let g:mustache_abbreviations = 1
