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

" Key mappings
" ------------

" Use ctrl and directional keys to navigate screens.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Open NERDTree faster.
nnoremap \ :NERDTree<cr>

" Faster NERDCommenter comment toggle in normal and visual modes.
nmap <leader>/ <leader>ci
vmap <leader>/ <leader>ci
