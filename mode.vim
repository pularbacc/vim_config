" $ ctrl + c | esc | jj : command mode
" $ v : visual mode
" $ ctrl + v : rectangular mode
" $ shift + r : replace mode
" $ ctrl + o : listen one command

" switch mode
inoremap jj <ESC>



" show cmd when typing
set showcmd

" cursor shape
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"
