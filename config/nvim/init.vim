set nocompatible
let mapleader = ","
let maplocalleader = ","

"filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin(stdpath('data') . '/plugged')

" Plugins

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-afterimage'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'
Plug 'altercation/vim-colors-solarized'
Plug 'rking/ag.vim'
Plug 'pangloss/vim-javascript'
Plug 'ludovicchabant/vim-gutentags'

Plug 'StanAngeloff/php.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'ervandew/supertab'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mustache/vim-mustache-handlebars'
Plug 'honza/vim-snippets'
Plug 'heavenshell/vim-jsdoc'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'moll/vim-node'
Plug 'Galooshi/vim-import-js'
Plug 'elzr/vim-json'
Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}

" Initialize plugin system
call plug#end()

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
" UltiSnips
"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsSnippetsDir= $HOME .'/.vim/bundle/vim-snippets/UltiSnips'

"
" Easytags
"

set tags=./.tags
" let g:easytags_by_filetype = getcwd() . '/.tags/'
let g:easytags_by_filetype = './.tags/'
let g:easytags_async = 1
let g:easytags_dynamic_files = 1
let g:easytags_suppress_ctags_warning = 1

" 
" Tern
"
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

"
" ALE
"

let g:ale_lint_delay = 1000
let g:ale_sign_warning = '.'

"
" vim-airline
"

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='sdark'
let g:airline_extensions = []
let g:airline_highlighting_cache = 1

"
" ag-vim
"
let g:ag_working_path_mode="r"

"
" vim-json
"
let g:vim_json_syntax_conceal = 0

"
" vim-localvimrc
"
let g:localvimrc_whitelist='~/Sites/'
