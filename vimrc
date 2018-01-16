" Rafal's vim config
"
set encoding=utf8
set nocompatible
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
set matchpairs+=<:>

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" other options
set number
set laststatus=2
" set cursorline

" styling
colo twilight
syntax on
set modelines=0
set wrap
set t_Co=256

" display options
set showmode
set showcmd

" display whitespaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" format status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" highlight matching search pattern
set hlsearch

" enable incremental search
set incsearch

set ignorecase
set smartcase

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" search path
let &path.="src/include,/usr/include/AL,"
" "='-I'.substitute(&path, ',', '\n-I', 'g')<cr>p
" line lenght rules
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

