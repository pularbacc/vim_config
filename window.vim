
" :vert : open window in vertical
" :hor : open window in horization

" :res [size] : resize height
" :vert res [size] : resize width

" $ ctrl + w + w : switch windows

" border window
hi VertSplit ctermfg=232
hi VertSplit ctermbg=14

" line number
set nu
hi LineNr ctermfg=237

" line color
hi StatusLine ctermbg=250 ctermfg=235

" unactive window status
hi StatusLineNC ctermfg=233 ctermbg=25

" wildmenu
set wildmenu
set wildmode=longest:full,full
hi Wildmenu ctermbg=250


" switch window
nnoremap <Leader>w <C-W>w

" switch window with ctrl h,j,k,l
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

