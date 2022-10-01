set rtp +=~/.vim/bundle/Vundle.vim

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Enable syntax color
syntax on

" Number on lines
set number

set cursorline

set history=100

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

set nobackup

" Allow long line 
set nowrap

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Disable highlight brackets
let g:loaded_matchparen=1


" Change Cursor to line 
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Change Theme
colorscheme onedark


" create line
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" set highlight Cursor ctermbg=darkmagenta

call plug#begin(“~/.vim/plugged”)
 “ Plugin Section
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()



" Press Tab for completion
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
