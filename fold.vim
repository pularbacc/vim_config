
" za | zA | zi

" set fold=indent
nnoremap <Leader>fi :set foldmethod=indent<CR>

" reset fold
nnoremap zk :e!<cr>

" click open fold"
noremap <2-LeftMouse> za

hi Folded ctermbg=233

hi Folded ctermfg=247

function! MyFoldText()
	let nl = v:foldend - v:foldstart + 1
	let comment = substitute(getline(v:foldstart),"^ *","",1)
	let linetext = substitute(getline(v:foldstart+1),"^ *","",1)
	let txt = '> '. linetext . ''
	return txt
endfunction

set foldtext=MyFoldText()

set fillchars=vert:\│,fold:\ 



