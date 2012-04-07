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

let @c='^i#'
nnoremap C @c
let @d=':s/^/#/'
nnoremap D @d<NL>
let @t='yy^i#p'
nnoremap T @t
nnoremap M :marks<NL>
nnoremap reg :reg<NL>
filetype plugin on

set laststatus=2
