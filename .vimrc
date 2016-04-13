set nocp
set smartindent
set tabstop=4
set shiftwidth=4
"set expandtab
set backspace=2
set background=dark
set ruler

call pathogen#infect()
call pathogen#helptags()

filetype off
filetype plugin indent on

syntax sync fromstart
syntax on

let g:pymode_rope=0
let g:pymode_folding=0
let g:vim_markdown_folding_disabled=1

command Json %!python -m json.tool

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
