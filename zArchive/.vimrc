2017-05-27
2017-09-12
" webrefs
" get pathogen plugin manager at https://github.com/tpope/vim-pathogen
" install pathogen as follows:
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" get emmet pluging at https://vimawesome.com/?p=2

" admin settings
set <esc>=jk
set relativenumber

" macro to comment line in python
let @d = '^i# ^'

"navigation
let <leader>g=G

" turn off highlight at underscore in .md files 
":syn clear markdownError
:hi link markdownError normal

" load Pathogen
filetype off
"call pathogen#infect()
execute pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on

" open .md as .markdown 
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" set your own personal modifier key to something handy
let mapleader="," 

" use ,o to make a new vertical split, ,s for horiz, ,x to close a split
" ,v calls up VISUAL mode
" try ,o (as in OpEd) <-- works
noremap <leader>o <c-w>v<c-w>l
noremap <leader>s <c-w>s<c-w>j
noremap <leader>x <c-w>c


" save file
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

" quit file
noremap <leader>q :q<cr>

"This mapping makes macros even easier to remember: hit qq to record, q to stop recording, and Q to apply.
nnoremap Q @q
vnoremap Q :norm @q<cr>


" use ctrl-h/j/k/l to switch between splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" get theme solarized
" cd ~/.vim/bundle && git clone git://github.com/altercation/vim-colors-solarized.git
" see also my notes in zim-wiki
syntax enable
set background=dark
"colorscheme distinguished
"colorscheme solarized
colorscheme vividchalk

" 
" python-mode
" cd .vim/bundle && git clone https://github.com/python-mode/python-mode.git
" cd python-mode && git submodule update --init --recursive
" https://vimawesome.com/plugin/python-mode
" Documentation is available in your vim :help pymode or /home/ubuntu/.vim/bundle/python-mode/doc/pymode.txt


