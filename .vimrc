set nocompatible              " be iMproved, required
filetype off                  " required
set modifiable

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
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'raimondi/delimitmate'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-jdaddy'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'ekalinin/Dockerfile.vim'
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
syntax on
set clipboard=unnamed

let mapleader =','
set path+=**
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
" colorscheme solarized
"
" change diff color
" let g:solarized_diffmode="high"

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


""""""""""""""""""""""
"" Language settings""
""""""""""""""""""""""


"""""""""""""""""""""
"" Plugin settings ""
"""""""""""""""""""""
" netrw file browsing tweaks

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


" fugitive mappings
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>ge :Gedit<CR>
nmap <leader>gbl :Gblame<CR>
nmap <leader>gv :Gvsplit<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gbr :Gbrowse<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gl :Glog<CR>

" go mappings
nmap <leader>gor :GoRun<CR>
nmap <leader>gob :GoBuild<CR>
nmap <leader>gov :GoVet<CR>k

" Gundo

nnoremap <leader>u :GundoToggle<CR>

