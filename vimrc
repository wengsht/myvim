" Don't be compatible with vi
set nocompatible

filetype on
filetype plugin on
filetype plugin indent on

if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

" show line number
set nu
set ruler

"pathogen bundle
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

" history storge
set history=1000

"syntax highlight
syntax on

" ignore case when searching text
set ignorecase
" highlighting the search result 
set hlsearch
" incremental search
set incsearch
" smart case matching
set smartcase

" More powerful backspacing
set backspace=indent,eol,start

" indent as pre line
set autoindent
set tabstop=4
set shiftwidth=4
set linespace=4
set expandtab     " tab is replaced with 4 spaces

" show command you just type
set showcmd

" colorscheme
colorscheme tir_black

" dark background (changing color of word)
set background=dark

set t_Co=256
" background color
" color evening

" keyboard map
nmap <C-o> :CommandT<cr>
nmap <F5> :IndentGuidesToggle<cr>
nmap <F4> :NERDTreeToggle<cr>
"nmap <F4>> :NERDTreeClose<cr>
nmap <F3> :NERDTreeFind<cr>


"indent guides
set ts=4 sw=4 et
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=1 
let g:indent_guides_guide_size=1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=239 
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=242

"nerd tree
let NERDChristmasTree=1
let NERDTreeWinSize=25


