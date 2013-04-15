
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"
Bundle 'ctrlp.vim'
" Installed Bundles
Bundle "git://github.com/scrooloose/nerdtree.git"
Bundle "git://github.com/Lokaltog/vim-powerline.git"
Bundle "git://github.com/spolu/dwm.vim.git"
Bundle "git://github.com/scrooloose/nerdcommenter.git"
Bundle "git://github.com/vim-scripts/bufexplorer.zip.git"
Bundle "git://github.com/vim-scripts/python.vim.git"
Bundle "git://github.com/vim-scripts/taglist.vim.git"
Bundle "git://github.com/sophacles/vim-bundle-sparkup.git"
Bundle "git://github.com/vim-scripts/django.vim.git"
Bundle "git://github.com/vim-scripts/python.vim--Vasiliev.git"
Bundle "git://github.com/vim-scripts/Markdown.git"
Bundle "git://github.com/vim-scripts/surround.vim.git"
Bundle "git://github.com/vim-scripts/AutoClose.git"
Bundle "git://github.com/vim-scripts/snipMate.git"
Bundle "git://github.com/mitechie/pyflakes-pathogen.git"
Bundle "git://github.com/vim-scripts/Command-T.git"
Bundle "git://github.com/tpope/vim-repeat.git"
Bundle "git://github.com/vim-scripts/closetag.vim.git"
Bundle "git://github.com/vim-scripts/tlib.git"
Bundle "git://github.com/vim-scripts/sessionman.vim.git"
Bundle "git://github.com/vim-scripts/tselectbuffer.git"
Bundle "git://github.com/vim-scripts/FuzzyFinder.git"
Bundle "git://github.com/vim-scripts/L9.git"
Bundle "git://github.com/vim-scripts/Jinja.git"
Bundle "git://github.com/altercation/vim-colors-solarized.git"
Bundle "git://github.com/ervandew/supertab.git"
"Bundle "git://github.com/klen/python-mode.git"

" Config
set nocompatible
set modelines=0

filetype plugin indent on
syntax on
set number

if has("gui_running")
    set guioptions-=T
    set guioptions+=c
    set guioptions-=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=l
    set guioptions-=R
    set guioptions-=L
    au GUIEnter * set lines=41 columns=85
    if has("gui_win32")
    " set GUI font windows
        set guifont=DejaVu_Sans_Mono:h10:cRUSSIAN
    elseif has("gui_mac") || has("gui_macvim")
    " set GUI font mac
        "set guifont=DejaVu\ Sans\ Mono:h14
        set guifont=Monaco:h12

    else
    " set GUI font linux
        set guifont=DejaVu\ Sans\ Mono\ 11 
    endif
    set background=light
    colorscheme solarized
    "set background=dark
    "colorscheme mustang
    highlight SpellBad term=underline gui=undercurl guisp=Orange 
else
    set t_Co=256
    "let g:solarized_termcolors=256
    set background=light
    let g:solarized_termcolors=256
    colorscheme solarized
    "set background=dark
    "colorscheme mustang
endif

" tabs/spaces
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set nowrap
set ruler


" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set nohlsearch
set gdefault

" turn of backup and swap-files
set nobackup
set noswapfile

" Turn off any bell
set novisualbell
set t_vb=

" Enable mouse
set mouse=a
set mousemodel=popup
set mousehide

" Encoding
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866
set langmenu=en,ru
set helplang=en,ru

" Status Line
set laststatus=2
set statusline=%<\ %n:%F%h%m%r%h%w%y\ %=[%{&fileencoding}][%lx%c:%L]--%P--\%0([%{strftime(\"%H:%M\")}]%)
set showcmd


" misc
set cursorline
set showmode
set hidden
set autochdir
set ttyfast
set history=1000

" Vim 7.3
if version > 730
    set relativenumber
    "set colorcolumn=80
endif

set wildmenu
"set wildmode=list:longest

" Key Bindings

" Leader
let mapleader = ","

" save file
nmap <F2> :w!<CR>
imap <F2> <Esc>:w!<CR>
vmap <F2> <Esc>:w!<CR>

" quick explorer
nmap <F4> :NERDTreeToggle<CR>
imap <F4> <Esc>:NERDTreeToggle<CR>
vmap <F4> <Esc>:NERDTreeToggle<CR>

" show buffers
nmap <F5> :BufExplorer<CR>
vmap <F5> <Esc>:BufExplorer<CR>
imap <F5> <Esc>:BufExplorer<CR>

" previous buffer
nmap <F6> :bp<CR>
vmap <F6> <Esc>:bp<cr>i
imap <F6> <Esc>:bp<cr>i

" next buffer
nmap <F7> :bn<CR>
vmap <F7> <Esc>:bn<cr>i
imap <F7> <Esc>:bn<cr>i

" kill buffer
nmap <F8> :bd<CR>
imap <F8> <Esc>:bd<CR>
vmap <F8> <Esc>:bd<CR>

" run python script
nmap <F9> :w<CR>:!python %<CR>
imap <F9> <ESC>:w<CR>:!python %<CR>
vmap <F9> <ESC>:w<CR>:!python %<CR>

" habitual PgUp and PgDown
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Use the damn hjkl keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>

"" And make them fucking work, too.
"nnoremap j gj
"nnoremap k gk

" Faster Esc
"inoremap <Esc> <nop>
"inoremap jj <ESC>

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>w <C-w>v<C-w>l

set backspace=indent,eol,start

" Edit vim stuff.
nmap <leader>ev <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>

nnoremap _dt :set ft=htmldjango<CR>
nnoremap _ht :set ft=html<CR>
nnoremap _jt :set ft=htmljinja<CR>
nnoremap _pd :set ft=python.django<CR>

" Save when losing focus
au FocusLost * :wa

" CTRL-C and CTR-V are Copy
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Completion 
set completeopt=menu

" Tab autocompletion
"function InsertTabWrapper()
    "let col = col('.') - 1
    "if !col || getline('.')[col - 1] !~ '\k'
        "return "\<tab>"
    "else
        "return "\<c-p>"
    "endif
"endfunction

"imap <tab> <c-r>=InsertTabWrapper()<cr>

" where from completion:
set complete=""
" from current buffer
set complete+=.
" from other opened buffers
set complete+=b
set completeopt-=preview
set completeopt+=longest

" plugins configs

" Tlist preferences
let g:Tlist_Show_One_File=1
let g:Tlist_GainFocus_On_ToggleOpen=0
let g:ragtag_global_maps = 1

" Highlight all python syntax
let python_highlight_all = 1

" Command-T
let g:CommandTMaxHeight=10

" Surround
let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1%}\r{% endblock %}"
let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1%}\r{% endif %}"
let g:surround_{char2nr("w")} = "{% with\1 \r..*\r &\1%}\r{% endwith %}"
let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1%}\r{% endcomment %}"
let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\1%}\r{% endfor %}"

"nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>s :SessionList<CR>
nnoremap <leader>r :CtrlPBuffer<CR>
nnoremap <leader>q gqip
nnoremap <leader>w <C-w>v<C-w>l

"let g:Powerline_symbols = 'fancy'

" use 'gf' to open python libraries
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

" Syntax 
au BufNewFile,BufRead *.less set filetype=less

" Markdown
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-
nnoremap <leader>3 I### <ESC>

" Python Mode Klen
let g:pymode_run = 1
let g:pymode_run_key = '<leader>c'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_print_as_function = 1
