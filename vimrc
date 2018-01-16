" Rafal's vim config
"
set encoding=utf8
" support for plugins from bundle
execute pathogen#infect()
filetype plugin indent on


" source .vimrc if present
set exrc
set secure

" identation rules
set tabstop=4
"set softtabstop=4
set shiftwidth=4
"set noexpandtab
set smarttab
set expandtab

" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" other options
set number
set laststatus=2
" set cursorline

" styling
colo twilight
syntax on
set t_Co=256

" search path
let &path.="src/include,/usr/include/AL,"
" "='-I'.substitute(&path, ',', '\n-I', 'g')<cr>p
" line lenght rules
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

