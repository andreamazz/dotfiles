set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

syntax on
colorscheme railscasts
set background=dark
let g:Powerline_symbols = 'unicode'

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

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'kien/ctrlp.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'scrooloose/nerdtree'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Tab between buffers
noremap <tab> <c-w><c-w>

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

filetype plugin indent on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
