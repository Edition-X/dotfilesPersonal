" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Comments
    Plug 'tpope/vim-commentary'
     " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line
    Plug 'vim-airline/vim-airline'
    " Ranger
    Plug 'kevinhwang91/rnvimr'
    " Theme
    Plug 'arcticicestudio/nord-vim'
    " Which-key popup menu
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Better tabline
    Plug 'mg979/vim-xtabline'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Movement on steroids
    Plug 'easymotion/vim-easymotion'
    " Buffer Bye
    Plug 'moll/vim-bbye'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " Subsitute and replace fast
    Plug 'svermeulen/vim-subversive'
    " Indent visuals
    Plug 'Yggdroot/indentLine'
    Plug 'lukas-reineke/indent-blankline.nvim'
    " Workspaces to autoload last sessions
    Plug 'thaerkh/vim-workspace'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
