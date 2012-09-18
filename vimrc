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
" color tir_black
colorscheme macvim 
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

"neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
autocmd Syntax html let g:neocomplcache_disable_auto_complete=1
set completeopt-=preview

nmap <c-a> i#include <vector><cr>#include <list><cr>#include <map><cr>#include <set><cr>#include <deque><cr>#include <queue><cr>#include <stack><cr>#include <bitset><cr>#include <algorithm><cr>#include <functional><cr>#include <numeric><cr>#include <utility><cr>#include <sstream><cr>#include <iostream><cr>#include <iomanip><cr>#include <cstdio><cr>#include <cmath><cr>#include <cstdlib><cr>#include <cctype><cr>#include <string><cr>#include <cstring><cr>#include <cstdio><cr>#include <cmath><cr>#include <cstdlib><cr>#include <ctime><cr> <cr>using namespace std;<cr><cr>int main() <cr>{<cr><ESC>kk

nmap <c-A> i#include <iostream><cr>#include <cstdio><cr>#include <cstring><cr>#include <cstdlib><cr>using namespace std;<cr><cr>#define HOME <cr>int main()<cr>{<cr><cr><ESC>ki#ifdef HOME<cr>freopen("1.txt", "r", stdin);<cr>#endif<cr><ESC>

nmap <c-c> i---<cr>layout: post<cr>title:<cr>abstract:<cr><cr>tags:<cr>- Personal<cr>- 履历<cr>type: post/diary<cr>---<cr><ESC>


nmap zff zf%
nmap zu ggvGzo

"get the exuberant Ctags here:
"http://sourceforge.net/projects/ctags/files/ctags/5.8/ctags-5.8.tar.gz/download
"and read the doc here:
"http://easwy.com/blog/archives/exuberant-ctags-chinese-manual/

"g+] to list all the tags
set tags+=/Users/wengsht/Program/linux/tags

"delimitMate
let delimitMate_matchpairs = "(:),[:],{:},\":\""

set cursorline
set cursorcolumn

highlight CursorLine cterm=underline ctermbg=black

nmap <F6> :w!<Enter> :!gcc % -o %:r<Enter>
nmap <F7> :w!<Enter> :!g++ % -o %:r<Enter>

nmap <F8> :!./%:r<Enter>

nmap <c-l> :w!<Enter> :!python %<Enter>

set columns=130
set lines=40

" Mac Vim
if has("gui_running")
    " 去掉菜单栏
    set go=aAce
    set guifont=Courier_New:h18
    set transparency=80
    hi guibg=black;

endif

nmap <C-F> :w!<Enter> :!firefox %<Enter>



