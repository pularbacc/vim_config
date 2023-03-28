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

" -[search in project]

" :vimgrep /[content]/gj `git ls-files` | cw
" :vim /[content]/gj

" - g : multiple word in line
" - j : not jump to first match
" - `git ls-files` : ignore gitignore
" - cw : show menu

" vimgrep map
" command -nargs=1 S noautocmd vimgrep /<args>/gj `git ls-files` | cw


"  highlight search result
set hlsearch
"  search with ignore case
" set ic
" search when typing
set is
" off search
nnoremap <C-l> :nohl<cr>


"  search and replace
function! ReplaceWithConfirm()
	let search_word = @/
	let replace_word = input("Replace '" . search_word . "' with :")

	execute '%s/' . search_word . '/' . replace_word . '/gc'
endfunction
nnoremap <leader>fr :call ReplaceWithConfirm()<CR>



let g:global_search = ''

function! SearchGlobal()
	let g:global_search = input('Search for :')
	if system('git rev-parse --is-inside-work-tree >/dev/null 2>&1') == 0
		execute 'vimgrep /' . g:global_search . '/gj `git ls-files`'
		copen
		call feedkeys("\<CR>")
	else
		execute 'vimgrep /' . g:global_search . '/gj **/*'
		copen
		call feedkeys("\<CR>")
	endif
	cw
endfunction
nnoremap <leader>ff :call SearchGlobal()<CR>

function! HighLightSearch()
	if g:global_search != ''
		execute 'match Search /' . escape(g:global_search, '/') . '/'
	endif
endfunction

"autocmd BufEnter * call HighLightSearch()



