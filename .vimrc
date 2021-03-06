set nocompatible              " be iMproved, required

syntax on
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

colorscheme railscasts
set background=dark
let g:Powerline_symbols = 'unicode'

if exists("&undodir")
  set undofile          "Persistent undo! Pure money.
  let &undodir=&directory
  set undolevels=500
  set undoreload=500
endif

" get the font from https://github.com/Lokaltog/powerline-fonts.git
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent
set number
set ignorecase
set smartcase
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set expandtab
set wildignore+=vendor/**
set wildignore+=log/**
set hlsearch
set incsearch
let mapleader=","
set backspace=2
set mouse=a
set ttymouse=xterm2

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'Keithbsmiley/swift.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'kien/ctrlp.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tcomment'
Bundle 'slim-template/vim-slim.git'
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
Bundle 'wavded/vim-stylus'

" Tab between buffers
noremap <tab> <c-w><c-w>

nnoremap j gj
nnoremap k gk

" Enable cmd-C in Visual Mode to copy in the system's clipboard
map <C-c> "+y<CR>
set clipboard=unnamed

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
"autocmd vimenter * NERDTree

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" JSX
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

filetype plugin indent on

:command WQ wq
:command Wq wq
:command W w
:command Q q

set pastetoggle=<F2>

" Ctrl-n to toggle relative line numbers
nnoremap <C-n> :set relativenumber!<cr>

