autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" toggle nerdtree
" nnoremap <Leader>ee :NERDTreeToggle<CR> 



" hide status line
let g:NERDTreeStatusline = '%#NonText#'

" hide help
let NERDTreeMinimalUI=1


" nerdtree focus
nnoremap <Leader>e :NERDTreeFocus<CR> 



