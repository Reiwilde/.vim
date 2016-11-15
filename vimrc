let $VIMCONFIGDIR = fnamemodify(expand('$MYVIMRC'), ':p:h')

if 'tmux-256color' ==# $TERM
    " fix true color in tmux
    let &t_8f = '[38;2;%lu;%lu;%lum'
    let &t_8b = '[48;2;%lu;%lu;%lum'
endif

colorscheme perso
syntax enable
filetype plugin indent on

set autoindent
" update buffer when file is changed outside of Vim
set autoread
" allow backspacing
set backspace =2
set backup
set backupdir =$VIMCONFIGDIR/backup
set colorcolumn =101
set cursorline
set cursorcolumn
set encoding =utf-8
" use spaces over tab
set expandtab
set fileformat =unix
set fileformats =unix,dos,mac
set foldmethod =marker
set history =50
set ignorecase
" always display status bar
set laststatus =2
set number
" number of spaces to use for each step of indent
set shiftwidth =4
set showcmd
set showmatch
set showtabline =1
set smartcase
set softtabstop =4
set spell
set spelllang =en
set splitbelow
set splitright
set tabstop =4
set termguicolors
set viminfo ='100,<50,s10,h
set wrap

if has('nvim')
    set viminfo +=n$VIMCONFIGDIR/nviminfo
else
    set nocompatible
    set viminfo +=n$VIMCONFIGDIR/viminfo
endif

call plug#begin()

call plug#end()
