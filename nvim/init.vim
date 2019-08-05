if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"PLUG LIST
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-clang'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ludovicchabant/vim-gutentags'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set path+=.,../**,**,/usr/include
set wildmenu

syntax enable

set number relativenumber

"set syntax=on
set termguicolors

set hlsearch
set incsearch
set ignorecase
set smartcase
:nnoremap <C-L> :nohlsearch<CR><C-L>

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

colorscheme afterglow
hi Normal guibg=NONE ctermbg=NONE

let g:python2_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"DEOPLETE
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

"DEOPLETE-CLANG
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-6.0/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-6.0/include'

"GUTENTAGS
let g:gutentags_project_root=['.gutentags']
let g:gutentags_add_default_project_roots=0
let g:gutentags_ctags_extra_args = ['-h=".h.hpp"', '--c++-kinds=+p']

"ULTISNIPS
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
