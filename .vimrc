if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

Plug 'arcticicestudio/nord-vim'

Plug 'mattn/calendar-vim'

call plug#end()

set termguicolors

colorscheme nord

set bg=dark

set clipboard=unnamedplus

filetype plugin indent on







































