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

Plug 'mattn/calendar-vim'

Plug 'dylanaraps/wal'

Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

call plug#end()

colorscheme wal
set background=dark









































