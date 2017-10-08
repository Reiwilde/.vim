let $VIMCONFIGDIR = fnamemodify(expand('$MYVIMRC'), ':p:h')

if 'cygwin' ==# $TERM
    set term=xterm
    set t_Co=256

    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"

    " backspace fix
    inoremap <Char-0x07F> <BS>
    nnoremap <Char-0x07F> <BS>

    " backspace fix in ctrlp
    let g:ctrlp_prompt_mappings = { 'PrtBS()': ['<Char-0x07F>', '<c-h>'] }
endif

syntax on

color gruvbox

set autoindent
" update buffer when file is changed outside of Vim
set autoread
" allow backspacing
set backspace=2
set backup
set backupdir=$VIMCONFIGDIR/backup
set colorcolumn=101
set cursorline
set cursorcolumn
set encoding=utf-8
" use spaces over tab
set expandtab
set fileformat=unix
set fileformats=unix,dos,mac
set foldmethod=marker
set history=50
set ignorecase
" always display status bar
set laststatus=2
set number
" number of spaces to use for each step of indent
set shiftwidth=4
set showcmd
set showmatch
set showtabline=1
set smartcase
set softtabstop=4
set spell
set spelllang=en
set splitbelow
set splitright
set tabstop=4
set termguicolors
set wrap
