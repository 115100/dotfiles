" plugins
" Call :PlugInstall to get everything
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
	Plug 'eagletmt/neco-ghc'
	Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
	Plug 'luochen1990/rainbow'
	Plug 'zchee/deoplete-go', {'do': 'make'}
	Plug 'zchee/deoplete-jedi'
call plug#end()

" rainbow
let g:rainbow_active = 1

" deoplete.nvim recommendation
set completeopt+=noselect

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" deoplete-jedi settings
let g:deoplete#sources#jedi#show_docstring = 1

" vim-go settings
let g:go_fmt_command = "goimports"

" essential options
set background=dark            " dark terminal
set guicursor=a:block-blinkon0 " block cursor
set syntax=on                  " enable syntax highlighting
