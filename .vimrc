set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
syntax enable
imap jj <Esc>
nmap lbr :set lbr
nmap nbr :set nolbr

au BufNewFile,BufRead *.ejs set filetype=html.javascript

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:indent_guides_enable_on_vim_startup = 1
set background=dark
set ts=4 sw=4 et
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
highlight Normal ctermbg=NONE

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
