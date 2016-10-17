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
Plugin 'tmhedberg/SimpylFold' 		  " Allows for better folding
Plugin 'vim-scripts/indentpython.vim' 	  " Allows for better indentation
Plugin 'scrooloose/syntastic'		  " Syntax highlighting
Plugin 'nvie/vim-flake8'		  " Addition Python syntax hightling
Plugin 'jnurmine/Zenburn'		  " Colour scheme terminal
Plugin 'altercation/vim-colors-solarized' " Colour scheme in GUI mode
Plugin 'scrooloose/nerdtree'		  " Tree file structure in Vim
Plugin 'jistr/vim-nerdtree-tabs'	  " Make Tabs better for NerdTree
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}  " Status bar
Plugin 'https://github.com/m-kat/aws-vim' "Text Complete for AWS CloudFormation
Plugin 'elzr/vim-json' " JSON syntax highlighting

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

"Default Tabbing = 4
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" PEP 8 
"au BufNewFile,BufRead *.py
"    \ set softtabstop=4
"    \ set textwidth=79
"    \ set autoindent
"    \ set fileformat=unix

" Other file types
au BufNewFile,BufRead *.js, *.html, *.css, .*
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Highlight extra whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Set UTF-8
set encoding=utf-8

" Python code highlighting
let python_highlight_all=1
syntax on

" Line Numbering
set nu

" Colours
set t_Co=256
" Which colour scheme to use
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif  
" Use F5 to switch colours in Vim
call togglebg#map("<F5>")

" NerdTree
" Opens NerdTree with Ctrl+N
map <C-n> :NERDTreeToggle<CR>
" Start NerdTree automatically
"autocmd vimenter * NERDTree
" Close Vim if only NerdTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Show hidden files by default
let NERDTreeShowHidden=1
" Hide .pyc files 
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Make Backspace work
set backspace=indent,eol,start

" System clipboard
set clipboard=unnamed
