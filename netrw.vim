" NETRW
" :E : open netrw
" :Rex : close netrw | :bd
" :r : change sort
" :R : move or rename file
" d : create directory
" % : create file
" D : delete file/directory

" disable annoying banner
let g:netrw_banner=0
" tree view
let g:netrw_liststyle=3
" hide files
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


" Map <leader>e to :Rex or :Explore
" nnoremap <silent> <leader>e :call RunRex()<CR>

function! RunRex()
    " Attempt to execute :Rex
    try
        Rex
    " If :Rex fails, execute :Explore
    catch
        Explore
    endtry
endfunction