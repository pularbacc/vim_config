call plug#begin()
" nerdtree
"Plug 'preservim/NERDTree'
"Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'francoiscabrol/ranger.vim'

" highlight vue 
"Plug 'leafOfTree/vim-vue-plugin'

" auto indent tab width
Plug 'vim-scripts/matchindent.vim'

" indentline vert
Plug 'Yggdroot/indentLine'

"Plug 'airblade/vim-gitgutter'

" auto close bracket
"Plug 'jiangmiao/auto-pairs'

"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
