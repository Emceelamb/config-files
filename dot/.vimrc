set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
syntax enable

au BufNewFile,BufRead *.ejs set filetype=html.javascript

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here

Plugin 'SuperTab'
Plugin 'Tabular'
Plugin 'surround.vim'

call vundle#end()
filetype plugin indent on
