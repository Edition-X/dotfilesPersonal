set nocompatible " required
filetype off " required
" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold' 		" Allows for better folding
Plugin 'vim-scripts/indentpython.vim' 	" Allows for better indentation
Plugin 'scrooloose/syntastic'		" Syntax highlighting
Plugin 'nvie/vim-flake8'		" Addition Python syntax hightling

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

" PEP 8 
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Other file types
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Highlight extra whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Set UTF-8
set encoding=utf-8

" Python code highlighting
let python_highlight_all=1
syntax on

" Line Numbering
set nu
