let g:pydiction_location='/home/dfujiwara/.vim/pydiction-1.2/complete-dict'
let g:pydiction_menu_height = 20

set nocompatible
set nu
syntax on
set hlsearch 
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set modeline
set ls=2
set path=.,~/src/**
set tags=~/tags/tags
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
\ [%l/%L\ (%p%%)

au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly
au FileType py set foldmethod=indent

au FileType coffee set shiftwidth=2
au FileType coffee set tabstop=2

au FileType javascript set shiftwidth=2
au FileType javascript set tabstop=2

au FileType htmldjango set shiftwidth=2
au FileType htmldjango set tabstop=2

au FileType html set shiftwidth=2
au FileType html set tabstop=2

au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source /Users/daisukefujiwara/.vim/ftplugin/json.vim

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.go set filetype=go
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md setlocal textwidth=80 

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>

" TagList Plugin Configuration
" let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F7> :TlistToggle<CR>

au BufNewFile,BufRead *.py highlight OverLength ctermbg=red ctermfg=white guibg=#592929 | match OverLength /\%101v.\+/
au BufNewFile,BufRead *.js highlight OverLength ctermbg=red ctermfg=white guibg=#592929 | match OverLength /\%81v.\+/

" Vundle set up
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on  

let @c='^i#'
nnoremap C @c
let @d=':s/^/#/'
nnoremap D @d<NL>
let @t='yy^i#p'
nnoremap T @t

nnoremap M :marks<NL>
nnoremap reg :reg<NL>
filetype plugin indent on

set laststatus=2
set splitbelow
set splitright

" Keyboard mapping
let mapleader = "\<space>"

" Save and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>

" Manipulate vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Abbreviations

" Python specific abbreviations.
iabbrev ipdb import ipdb; ipdb.set_trace()
