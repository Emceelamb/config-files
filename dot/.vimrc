set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
syntax enable
imap jj <Esc>

au BufNewFile,BufRead *.ejs set filetype=html.javascript

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:indent_guides_enable_on_vim_startup = 1

set background=dark

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here

Plugin 'SuperTab'
Plugin 'Tabular'
Plugin 'surround.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'junegunn/goyo.vim'

call vundle#end()
filetype plugin indent on
