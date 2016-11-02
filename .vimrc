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
Plugin '907th/vim-auto-save'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
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

" Highlight search results.
set hlsearch incsearch

" Make backspace behave normally.
set backspace=2

" Use spaces for tabs.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Add space between the cursor and the bottom of the screen.
set scrolloff=2

" Keep time interval short for git-gutter.
set updatetime=250


" Visual settings
" ---------------

" Turn on syntax highlighting.
syntax on

" Turn on line numbers.
set number

" Set vertical line for max line length.
set colorcolumn=81

" Make trailing spaces visible as a dot.
set listchars=trail:·

" Make the background dark for colorschemes that require it.
set background=dark

" Set the colorscheme.
" eg. Tomorrow-Night, hybrid, sorcerer, kolor, railscasts
colorscheme hybrid


" Plugin settings
" ---------------

" Enable auto-save.
let g:auto_save=1

" Show dotfiles in NERDTree.
let g:NERDTreeShowHidden=1

" Do not require .jsx extension to highlight jsx.
let g:jsx_ext_required=0

" Expand spaces and returns inside delimiters.
let g:delimitMate_expand_space=1
let g:delimitMate_expand_cr=1


" Plugin mappings
" ---------------

" Open NERDTree faster.
nnoremap \ :NERDTreeTabsToggle<cr>

" Faster NERDCommenter comment toggle in normal and visual modes.
nmap <leader>/ <leader>ci
vmap <leader>/ <leader>ci


" Key mappings
" ------------

" Map a more convenient leader key.
let mapleader=' '

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

" Add newlines in normal mode without going into insert mode.
nnoremap <cr> o<esc>

" Faster escaping out of insert mode.
inoremap jk <esc>
