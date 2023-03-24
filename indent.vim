set autoindent
set smartindent
set cindent
set smarttab
set noexpandtab
set nowrap

" tab space
set tabstop=4
set shiftwidth=4

" render tab
set list listchars=tab:\│\ 
let g:indentLine_char = '│'
hi SpecialKey ctermfg=237   

" indent tab
:map <Tab> >
:map <Tab> <Esc> >
:map <Tab> >gv
:map <S-Tab> <j
:map <S-Tab> <Esc> <
:map <S-Tab> <gv


