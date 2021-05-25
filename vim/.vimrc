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

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_fold_enabled=1

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
"let g:deoplete#ignore_sources = ["buffer","around","file","member","omni"]
Plug 'hisaknown/deoplete-latex' 

call plug#end()

set termguicolors

colorscheme nord

set bg=dark

set clipboard=unnamedplus

set number
set relativenumber

filetype plugin indent on

" Key maps
map <Leader>ue :UltiSnipsEdit<cr>

setlocal spell
set spelllang=en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


call deoplete#custom#option('ignore_sources',{'tex':['buffer','around','file','member','omni']}) 
