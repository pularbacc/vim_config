" :/[word] : search
" - [word]\c : without upper case

" $ n : next search
" $ shift + n : previous search

" :set hls : highlight search
" :nohls : no highlight search

" :set ic : search ignore case 
" :set noic : search without ignore case 

" :%s/[content]/[replace]/gc : search and replace
" :%s//[replace]/gc : replace current search highlight


" 	highlight search result
set hlsearch

" 	search with ignore case
set ic

" 	search when typing
set is

" 	off search
nnoremap <C-l> :nohl<cr>



" -[search in project]

" :vimgrep /[content]/gj `git ls-files` | cw
" :vim /[content]/gj 

" - g : multiple word in line
" - j : not jump to first match
" - `git ls-files` : ignore gitignore
" - cw : show menu

" vimgrep map
command -nargs=1 S noautocmd vimgrep /<args>/gj `git ls-files` | cw


"	search and replace
function! ReplaceWithConfirm()
	let search = input('Search for: ')
	let replace = input('Replace with: ')
  
	execute '%s/' . search . '/' . replace . '/gc'
endfunction
nnoremap <leader>f :call ReplaceWithConfirm()<CR>



