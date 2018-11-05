call plug#begin()

Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/ctags.vim'
Plug 'wakatime/vim-wakatime'

call plug#end()

if !has('gui_running')
  set t_Co=256
endif


set nocompatible                " use vim defaults
set t_RV=                       " http://bugs.debian.org/608242
" set runtimepath=$VIMRUNTIME     " turn off user scripts, https://github.com/igrigorik/vimgolf/issues/129

syntax on                       " turn syntax highlighting on by default
filetype on                     " detect type of file
filetype indent on              " load indent file for specific file type

set nobackup                    " do not keep a backup file
set novisualbell                " turn off visual bell
set visualbell t_vb=            " turn off error beep/flash

set ruler                       " show the current row and column
set relativenumber              " show line numbers
set showcmd                     " display incomplete commands
set showmode                    " display current modes

set scrolloff=3                 " keep 3 lines when scrolling
set backspace=indent,eol,start  " make that backspace key work the way it should
set showmatch                   " jump to matches when entering parentheses
set matchtime=1                 " tenths of a second to show the matching parenthesis

set hlsearch                    " highlight searches
set incsearch                   " do incremental searching
set ignorecase                  " ignore case when searching
set smartcase                   " no ignorecase if Uppercase char present

" Identify invisible characters and don't show them by default
set list listchars=eol:¬,tab:▸\ ,trail:.,

" Default indenting options
set autoindent smartindent
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab

set laststatus=2
set noshowmode                  " get rid of Insert Bar

set termguicolors
let ayucolor="mirage"
colorscheme ayu

filetype plugin on

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


