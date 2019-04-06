"PLUG LIST
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/deol.nvim'
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set path+=.,**,/usr/include
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

"DEOPLETE
let g:deoplete#enable_at_startup = 1

"DEOPLETE_CLANG
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang/7.0.1/include'

"GUTENTAGS
let g:gutentags_project_root=['.gutentags']
let g:gutentags_add_default_project_roots=0
let g:gutentags_ctags_extra_args = ['-h=".h.hpp"', '--c++-kinds=+p']

