" vim configuration

" Do not use vi default settings.
set nocompatible

" Vundle setup
" ------------

" Initialize vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Finish vundle.
call vundle#end()
filetype plugin indent on

" General settings
" ----------------

" Put swap files in a temporary directory in home or root.
set swapfile
set directory=$HOME/.vim/tmp
set backupdir=$HOME/.vim/tmp

" Map a more convenient leader key.
let mapleader=' '

" Highlight search results.
set hlsearch incsearch

" Use spaces for tabs.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Make backspace behave normally.
set backspace=2

" Show dotfiles in NERDTree.
let NERDTreeShowHidden=1

" Visual settings
" ---------------

" Turn on syntax highlighting.
syntax on

" Turn on line numbers.
set number

" Set the colorscheme.
" Tomorrow-Night, sorcerer, railscasts
colorscheme sorcerer

" Do not require .jsx extension to highlight jsx.
let g:jsx_ext_required=0

" Key mappings
" ------------

" Use ctrl and directional keys to navigate screens.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Remove highlight on escape key press.
nnoremap <silent> <esc> :nohlsearch<cr>

" Open tabs faster.
nnoremap <leader>t :tabnew<cr>

" Faster save.
nnoremap <c-w> :w<cr>

" Open NERDTree faster.
nnoremap \ :NERDTree<cr>

" Faster NERDCommenter comment toggle in normal and visual modes.
nmap <leader>/ <leader>ci
vmap <leader>/ <leader>ci
