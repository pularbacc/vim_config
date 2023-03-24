
" autocmd BufNewFile,BufRead *.vue set ft=html

set path+=**

" ignore files
let g:project_find_path = '.,' . system("git ls-tree -d HEAD --name-only | tr '\n' : | sed 's/:/**,/g'")

autocmd VimEnter let &path = g:project_find_path

autocmd BufReadPost * let &path = g:project_find_path

syntax on

filetype plugin on

filetype indent on

