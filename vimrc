set fileencodings=ucs-bom,utf-8,cp936
      
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set noswapfile
set nowb
set backspace=start,indent,eol
set nu!
set autoindent
set smartindent
set wrap
set foldmethod=syntax
set noerrorbells
set novisualbell

set nocompatible
set history=400

function! MySys()
    if has("win32") || has("win64")
        return "windows"
    elseif has("mac")
        return "mac"
    else
        return "linux"
    endif
endfunction

filetype off

if has("unix")
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc()
endif
Bundle 'gmarik/vundle'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'

filetype on

" autocmd
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 textwidth=79

" set mapleader
let mapleader = ","

" on mac system map cmd to ctrl
if MySys() == "mac"
    map <D-y> <C-y>
    map <D-e> <C-e>
endif

call pathogen#infect()

syntax on

filetype plugin on
filetype indent on

set ruler


