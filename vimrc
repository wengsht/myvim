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
colorscheme tir_black
" dark background (changing color of word)
set background=dark

set t_Co=256
" background color
" color evening

" command-t
nmap <C-o> :CommandT<cr>

" indentguide
nmap <F5> :IndentGuidesToggle<cr>

"nerdtree
"nmap <F4> :NERDTreeToggle<cr>
nmap <F4> :NERDTreeClose<cr> :TagbarClose<cr>
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

nmap zff zf%
nmap zu ggvGzo

"get the exuberant Ctags here:
"http://sourceforge.net/projects/ctags/files/ctags/5.8/ctags-5.8.tar.gz/download
"and read the doc here:
"http://easwy.com/blog/archives/exuberant-ctags-chinese-manual/

"g+] to list all the tags
"set tags+=./tags

set tags=tags

"delimitMate
let delimitMate_matchpairs = "(:),[:],{:},\":\""

" cursor
set cursorline
set cursorcolumn

highlight CursorLine cterm=underline ctermbg=black

" change pwd to ./
nmap <F2> :cd %:p:h<Enter>

" Mac Vim
if has("gui_running")
    " 去掉菜单栏
    set go=aAce
    set guifont=Courier_New:h18
    set transparency=80
    hi guibg=black;
endif
   
" wantn't use w
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


" zen_conding
let g:user_zen_expandabbr_key = '<c-e>'

" vimwiki
let vimwiki_site = "/Users/wengsht/Dropbox/wiki/"
let vimwiki_diary = 'diary/' . strftime('%Y/%Y-%b')
let vim_blog = "/Users/wengsht/Program/wengsht.github.com/"
let vimwiki_html = vim_blog . 'wiki'
let vimwiki_html_template = vimwiki_html . '/template'
let g:vimwiki_list = [{ 'path': vimwiki_site, 
            \ 'path_html': vimwiki_html,
            \ 'template_path': vimwiki_html_template,
            \ 'template_default': 'template.tpl',
            \ 'diary_header': '日记',
            \ 'diary_link_count': 5,
            \ 'diary_rel_path' : vimwiki_diary,
            \ 'auto_export': 1   }]
let g:vimwiki_diary_months = {
      \ 1: '一月-迎春', 2: '二月-兰花', 3: '三月-桃花', 
      \ 4: '四月-芙蓉', 5: '五月-蔷薇', 6: '六月-荷花',
      \ 7: '七月-栀子', 8: '八月-桂花', 9: '九月-菊花',
      \ 10: '十月-石榴', 11: '十一月-水仙', 12: '十二月-腊梅'
      \ }
let g:vimwiki_camel_case = 0

map \\n :VimwikiGoto 

map <F6> :Calendar<cr>
map \\m :!open /Users/wengsht/Program/wengsht.github.com/wiki/index.html<cr>
map \\g :VimwikiGoto 

" slime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_paste_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}


" tagbar
nmap <F7> :TagbarOpen fj<CR>
nmap <F8> :TagbarClose<CR>

let g:tagbar_autofocus = 1
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tarbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_autoclose = 0

"
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

nmap \tt :w<cr>:!g++ % -o %:r<Enter>:!./%:r < 1.txt<Enter>
nmap \yy :w<cr>:!g++ % -o %:r<Enter>:!./%:r < 1.txt > 2.txt <Enter>

nmap gn gt
nmap gp gT
nmap gr :tabnew<cr>
nmap gc :tabc<cr>

set clipboard=unnamed

nmap <c-a> :vertical resize +5<cr>
nmap <c-b> :vertical resize -5<cr>

"set foldenable
"set foldmethod=syntax
"set foldcolumn=0

