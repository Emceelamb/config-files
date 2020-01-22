set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab
set background=dark
syntax enable
inoremap jj <Esc>

"set inclusive
set selection=inclusive

" Change line breaks
nnoremap lbr :set lbr
nnoremap nbr :set nolbr

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

"Spellcheck
set spellfile=$HOME/.config-files/dot/.vim/spell/en.utf-8.add
command Spellcheck set spell!
autocmd BufRead,BufNewFile *.md setlocal spell

" Custom Commands
command Preview MarkdownPreview
nnoremap <F5> "=strftime("%F")<CR>p
inoremap <F5> <C-R>=strftime("%F")<CR>

" EJS as filetype
au BufNewFile,BufRead *.ejs set filetype=html.javascript

" Rainbow Parenthesis setup
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Indent guideline setup
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
set ts=2 sw=2 sts=2 et

highlight Normal ctermbg=NONE
highlight Comment cterm=italic ctermbg=black

" Auto pair
let g:AutoPairsShortcutToggle = '<C-A><C-P>'

" Nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=0
let g:NERDTreeQuitOnOpen=1

" Emojis!
set completefunc=emoji#complete

" Vundle plugin setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Basic environment plugins
Plugin 'SuperTab'
Plugin 'Tabular'
Plugin 'surround.vim'
Plugin 'tpope/vim-repeat'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'

" Developing Assistants 
Plugin 'jiangmiao/auto-pairs'
Plugin 'prettier/vim-prettier'
Plugin 'tpope/vim-commentary'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mattn/emmet-vim'

" Writing Plugins
Plugin 'junegunn/goyo.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'junegunn/vim-emoji'

" Color Schemes
Plugin 'gilgigilgil/anderson.vim'
Plugin 'morhetz/gruvbox'

" emmet config
let g:user_emmet_leader_key=','
call vundle#end()
filetype plugin indent on

function! MergeTab()
    let bufnums = tabpagebuflist()
    hide tabclose
    topleft vsplit
    for n in bufnums
        execute 'sbuffer ' . n
        wincmd _
    endfor
    wincmd t
    quit
    wincmd =
endfunction
command! MergeTab call MergeTab()

