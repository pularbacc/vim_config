" -------------------------
" close nerdtree when no window
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" hide status line
" let g:NERDTreeStatusline = '%#NonText#'

" hide help
" let NERDTreeMinimalUI=1

" nnoremap <Leader>e :e.<CR> 



"let g:NERDTreeGitStatusIndicatorMapCustom = {
"			\ 'Modified'  :'✹',
"			\ 'Staged'    :'✚',
"			\ 'Untracked' :'✭',
"			\ 'Renamed'   :'➜',
"			\ 'Unmerged'  :'═',
"			\ 'Deleted'   :'✖',
"			\ 'Dirty'     :'✗',
"			\ 'Ignored'   :'☒',
"			\ 'Clean'     :'✔︎',
"			\ 'Unknown'   :'?',
"			\ }


