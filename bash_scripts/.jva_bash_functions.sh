#!/bin/bash

fd() {
 local dir
 dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d \
      -print 2> /dev/null | fzf +m) &&
 cd "$dir"
}

fdd() {
  cd ~/dev/
  fd
}

fdnvim() {
  cd ~/dotfiles/nvim/.config/nvim
  nvim .
}
