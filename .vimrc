set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-rails'
Plugin 'altercation/vim-colors-solarized'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader =','

""""""""""""""""""""""
"" General settings ""
""""""""""""""""""""""

set nobackup
set nowritebackup
set noswapfile

set hidden
set autoread
set history=1000
set backspace=indent,eol,start

set wildmenu
set wildmode=longest,full
set wildignore+=tmp,.bundle,.sass-cache,.git,.svn,.hg,doc,coverage,vendor,node_modules,deps

set scrolloff=3
set splitright
set splitbelow

set t_vb=
set noerrorbells
set novisualbell
set t_Co=256
set ttyfast
set lazyredraw
set timeoutlen=500

"""""""""""""""""""""""""
"" Colors + formatting ""
"""""""""""""""""""""""""

set background=dark
colorscheme solarized

" set cursorline
set nowrap
set synmaxcol=200 " Do not highlight long lines
set softtabstop=2
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set smartindent
set nojoinspaces
set number
set numberwidth=4
set fillchars=vert:│
set encoding=utf-8
set list
set listchars=tab:\·\ ,trail:·,eol:¬

""""""""""""""
"" Searches ""
""""""""""""""

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

"""""""""""""""""""""
"" Window movement ""
"""""""""""""""""""""

" set window moves to avoid the C-w key combo

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"""""""""""""""""""""
"" Plugin settings ""
"""""""""""""""""""""

" Ultisnips config

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
