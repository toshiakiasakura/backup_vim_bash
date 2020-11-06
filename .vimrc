

imap <C-j> <Esc>
imap <C-l> <Esc>la
imap <C-h> <Esc>i
imap <C-d> <Esc>xi

nmap <Enter> o<Esc>
nmap <C-m> o<Esc>
"map <C-n> :NERDTreeToggle
" set up python
"map <C-i> i#!usr/bin/python<Enter># -*- coding: utf-8 -*-<Enter><Enter>def main():<Enter>dammy = 1 <Enter><Enter><Esc>iif __name__=="__main__":<Enter>main()<Esc>

" colorscheme blue
" let mapleader = " "

set nowrap

set hlsearch
set ignorecase
set smartcase

set smartindent

set ruler
set number
set list
set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamedplus
"NeoBundle Scripts-----------------------------
"https://qiita.com/puriketu99/items/1c32d3f24cc2919203eb
"
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/toshiaki/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/toshiaki/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'scrooloose/syntastic'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" syntastic options 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
