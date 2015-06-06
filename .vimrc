execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set hlsearch
set linebreak
set ruler
set wildmenu
set ignorecase
set smartcase
set incsearch
set lazyredraw
set nowrap

set encoding=utf-8

set nobackup
set nowb
set noswapfile

set smarttab

set expandtab
set tabstop=2
set shiftwidth=2
"set tw=80

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

map 0 ^

map j gj
map k gk
noremap <D-J> :tabprev<CR>
noremap <D-K> :tabnext<CR>

map , <C-w>

map <A-ENTER> z=

set guifont=Menlo\ Regular:h14

if has("gui")
	colorscheme solarized
endif

set autochdir

function! s:goyo_enter()
  set fu
  set linespace=5
  set wrap
  set guioptions-=r
  set spell spelllang=en
endfunction

function! s:goyo_leave()
  set nofu
  set linespace=0
  set nowrap
  set guioptions+=r
  set nospell
endfunction

autocmd! User GoyoEnter
autocmd  User GoyoEnter nested call <SID>goyo_enter()

autocmd! User GoyoLeave
autocmd  User GoyoLeave nested call <SID>goyo_leave()

autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

let g:sunset_latitude = 47.9788
let g:sunset_longitude = 13.0802
let g:sunset_utc_offset = 1

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown Goyo

