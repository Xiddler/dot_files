 
https://github.com/tpope/vim-pathogen

 set <esc>=jk 
  1 set relativenumber
  2 
  3 execute pathogen#infect()
  4 syntax on
  5 filetype plugin indent on
  6 
  7 " set your own personal modifier key to something handy
  8 let mapleader=","
  9 
 10 " use ,o to make a new vertical split, ,s for horiz, ,x to close a split
 11 " ,v calls up VISUAL mode
 12 " try ,o (as in OpEd) <-- works
 13 noremap <leader>o <c-w>v<c-w>l
 14 noremap <leader>s <c-w>s<c-w>j
 15 noremap <leader>x <c-w>c
 16 
 17 
 18 
 19 " use ctrl-h/j/k/l to switch between splits
 20 map <c-j> <c-w>j
 21 map <c-k> <c-w>k
 22 map <c-l> <c-w>l
 23 map <c-h> <c-w>h

