#!/bin/sh

echo 'Vim'
cd ~/Downloads/vim/ && gfp
echo 'FZF'
cd ~/.fzf/ && git fetch && gfp
