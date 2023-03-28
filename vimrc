
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
\ "project",
\ "script",
\ "search",
\ "shortcut",
\ "system",
\ "window",
\ "netrw",
\ "fzf"
\]

for config in configs
  let file = "~/.vim/" . config . ".vim"
  execute "source" file 
endfor
