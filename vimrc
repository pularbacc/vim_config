
" leader key
let mapleader = ","

let configs = [
\ "plugins",
\ "buffer",
\ "common",
\ "edit",
\ "fold",
\ "indent",
\ "mode",
\ "move",
\ "nerdtree",
\ "nerdtree_git",
\ "project",
\ "script",
\ "search",
\ "shortcut",
\ "system",
\ "window"
\]

for config in configs
  let file = "~/.vim/" . config . ".vim"
  execute "source" file 
endfor
