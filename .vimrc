" load plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

" plugin settings
let g:airline_theme = 'dracula'

syntax on
set number
set background=dark
set foldlevel=99
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent
set smartindent
set colorcolumn=120
set cursorline
set nowrap
set laststatus=2
set spell spelllang=en_us
set foldmethod=indent
set splitright
set splitbelow
set incsearch
set hlsearch
set termguicolors
set t_Co=16
setlocal foldmethod=syntax

imap jj <Esc>

command W w
command Q q
command WQ wq
command Wq wq
command Wqa wqa
command WQa wqa
command WqA wqa
command WQA wqa


autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif

if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal! g'\"" | endif
endif

autocmd BufWritePre * :%s/\s\+$//e
