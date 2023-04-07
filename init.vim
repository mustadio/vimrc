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

" 插入移动
inoremap <c-e> <end>
inoremap <c-a> <c-o>^
inoremap <c-d> <del>
inoremap <c-f> <c-o>W
inoremap <expr><c-b> <sid>CtrlB()
func! s:CtrlB()
	if pumvisible()|return "\<c-n>"
	elseif getline('.')[col('.')-2]==nr2char(9)
		let s:pos=col('.')|let s:result=""
		while s:pos!=0|let s:result=s:result."\<bs>"|let s:pos-=1|endwhile
		let s:result=s:result."\<c-n>"
		return s:result
	else
		return "\<c-[>Bi"
	endif
endfunc
" 插入模式删除
inoremap <c-q> <c-o>dd
snoremap <c-q> <c-o>dd

