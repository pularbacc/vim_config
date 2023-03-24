" :ls : list buffers
" :b[num] : open buffer

" :e# : previous buffer 
" $ ctrl + 6 : previous buffer

" :bd : delete buffer

" list buffer
nnoremap <Leader>b :buffers<CR>:b<Space> 

" previous buffer | BS == delete
nnoremap <Leader><BS> :e#<CR> 

" auto save file
" autocmd TextChanged,TextChangedI <buffer> silent write

" auto write when switch file
set autowriteall
