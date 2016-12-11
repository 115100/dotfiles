" General settings
set number
set cursorline
set colorcolumn=80
set laststatus=2
set noswapfile
syntax on
filetype plugin indent on
let g:dotvim = split(&runtimepath, ',')[0]
let &viminfo .= expand(',n' . g:dotvim . '/store/viminfo')

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set breakindent
autocmd FileType python setlocal expandtab

" Search
set ignorecase
set smartcase

" Persistent undo
if has('persistent_undo')
	let &undodir = expand(g:dotvim . '/store/undodir')
	set undofile
endif

" Plugin-settings
execute pathogen#infect()
let g:neocomplete#enable_at_startup = 1
let g:go_fmt_command = "goimports"
