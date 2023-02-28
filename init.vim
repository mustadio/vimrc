set nocompatible
set showmode
set showcmd

filetype indent on
set autoindent

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

set showmatch
set hlsearch
set ignorecase
set smartcase

set cursorline
set showtabline=1
set laststatus=2
syntax on

if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme gruvbox

set noswapfile

set autochdir
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_preview=1
augroup InitNetrw
  autocmd!
  autocmd VimEnter * if argc() == 0 | Lexplore | endif
augroup end

