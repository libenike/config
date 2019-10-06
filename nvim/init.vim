if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"PLUG LIST
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-clang'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set path+=.,../**,**,/usr/include
set wildmenu

set number relativenumber

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

let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ }

"DEOPLETE
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

