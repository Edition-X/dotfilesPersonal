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
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}  " Status bar
Plugin 'https://github.com/m-kat/aws-vim' "Text Complete for AWS CloudFormation
Plugin 'elzr/vim-json' " JSON syntax highlighting
"Plugin 'pearofducks/ansible-vim' " Ansible 2.0, it supports YAML playbooks, Jinja2 templates, and Ansible's hosts files
Plugin 'erikzaadi/vim-ansible-yaml' " Ansible syntax - http://erikzaadi.com/2015/11/15/linting-ansible-yaml-in-vim/
Plugin 'tpope/vim-fugitive' " Ansible syntax - http://erikzaadi.com/2015/11/15/linting-ansible-yaml-in-vim/
Plugin 'hashivim/vim-terraform'
Plugin 'martinda/Jenkinsfile-vim-syntax'
" Recomender settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Cooler error and warning symbols
"let g:syntastic_error_symbol = "✗"
"let g:syntastic_warning_symbol = "<img draggable="false" class="emoji" alt="⚠" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/26a0.svg">"


" JSON formatting, allows double quotes to show in json file
let g:vim_json_syntax_conceal = 0

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
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" PEP 8 
"au BufNewFile,BufRead *.py
"    \ set softtabstop=2
"    \ set textwidth=79
"    \ set autoindent
"    \ set fileformat=unix

" Other file types
"au BufNewFile,BufRead *.js, *.html, *.css, .*
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

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

" vimdiff stuff for merging
set laststatus=2 "show the status line
set statusline=%-10.3n  "buffer number
" Doesn't seem to work for me :(
"map <silent> <leader>2 :diffget 2<CR>
"map <silent> <leader>3 :diffget 3<CR>
"map <silent> <leader>4 :diffget 4<CR>

