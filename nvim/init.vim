if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"PLUG LIST
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'jpalardy/vim-slime'

Plug 'jiangmiao/auto-pairs'

Plug 'wlangstroth/vim-racket'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set path+=.,../**

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

"Enable line numbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

colorscheme afterglow
hi Normal guibg=NONE ctermbg=NONE

let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ }

:nnoremap <silent> <C-]> :call LanguageClient#textDocument_definition()<CR>

"DEOPLETE
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

"SLIME
let g:slime_target = "tmux"

:nnoremap <C-K> <C-A>

"ULTISNIPS
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
