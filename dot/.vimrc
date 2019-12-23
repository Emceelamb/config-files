" Basic Vim setup
set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
syntax enable
imap jj <Esc>

" Change line breaks
nmap lbr :set lbr
nmap nbr :set nolbr

" Easier Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Easier Tab Navigation
nnoremap <C-H><C-H> gT
nnoremap <C-L><C-L> gt

set splitbelow
set splitright

" Custom Commands
:command Preview MarkdownPreview

" EJS as filetype
au BufNewFile,BufRead *.ejs set filetype=html.javascript

" Rainbow Parenthesis setup
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Indent guideline setup
let g:indent_guides_enable_on_vim_startup = 1
set background=dark
set ts=4 sw=4 et
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
highlight Normal ctermbg=NONE

" Auto pair
let g:AutoPairsShortcutToggle = '<C-A><C-P>'

" Vundle plugin setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Additonal plugins
Plugin 'SuperTab'
Plugin 'Tabular'
Plugin 'surround.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'junegunn/goyo.vim'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'townk/vim-autoclose'
Plugin 'maxmellon/vim-jsx-pretty'

" Markdown Plugin
Plugin 'iamcco/markdown-preview.nvim'

" emmet config
let g:user_emmet_leader_key=','
call vundle#end()
filetype plugin indent on
