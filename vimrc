" Foreword {{{ 
    "=== Foreword ===
    "to edit this $MYVIMRC file from any vim file <-- <leader>ev
    "to source this file --> :source ~/.vimrc <-- <leader>sv
    " status line superseded by airline, the powerline for vim
    " }}}
" Mininimum settings {{{
    "=== Min settings === 
	set nocompatible
    set splitbelow splitright
    " in insert mode jk will switch to normal mode
    imap jk <Esc>
    set viminfo='1000,f1
    set undofile
    set undodir=~/.vim/undodir
	"}}}
" Spaces And Tabs Config {{{ 
    " 
	"=== Spaces And Tabs ===
	set tabstop=4
	set shiftwidth=4
	set smarttab
	set softtabstop=4   " number of spaces in tab when editing
	set expandtab       " tabs are spaces
	" }}}
" UI Config {{{
	"===  UI Config ===
	set wildmenu            " visual autocomplete for command menu ie use the TAB key after entering starter text
	"allow  yanked text to be copied to the X11 system clipboard....
	set clipboard=unnamedplus
	" turn off highlight at underscore in .md files 
	" :syn clear markdownError
	hi link markdownError normal
    " toggle number and realativenumber
    nnoremap <C-n> :exe 'set nu!' &nu ? 'rnu!' : ''
    set number relativenumber
    " Enable CursorLine
    " set cursorline
    " Default Colors for CursorLine
    " highlight  CursorLine ctermfg=white ctermbg=blue
    " set cursorcolumn
    set statusline+=%F
	" }}}
" Searching {{{
	"=== Searching ===
	set incsearch 
	set ignorecase            " Make searches case-insensitive
    set smartcase               "Use the case of the search
	" }}}
" Folding {{{
	"=== folding ===
    " folding tips
    " zo - open a fold (when all are folded)
    " zm - fold all
    " zr - reveal all
	set foldmethod=indent   " fold based on indent level
	set foldnestmax=10      " max 10 depth
	set foldenable          " fold files by default on open
	set foldlevelstart=1   " start with fold level of 1
	" }}}
" Custom Movements {{{
    	"=== Custom Movements ===
	"navigation tips
        "H – Go to the first line of current screen.
        "M – Go to the middle line of current screen.
        "L – Go to the last line of current screen.
        "ctrl+f – Jump forward one full screen.
        "ctrl+b – Jump backwards one full screen
        "ctrl+d – Jump forward (down) a half screen
        "ctrl+u – Jump back (up) one half screen
	" move to beginning/end of line
	" nnoremap B ^
    " map L to end of line and H to start of line
    ":nmap L $ 
    ":nmap H ^
    "
    "set the cursor to move down a single row on the screen
    nnoremap j gj
    nnoremap k gk
	" use ctrl-h/j/k/l to switch between splits
	map <c-j> <c-w>j
	map <c-k> <c-w>k
	map <c-l> <c-w>l
	map <c-h> <c-w>h
	" }}}""
" Pathogen {{{
	" === Pathogen ===
	" load Pathogen
	filetype off
	execute pathogen#helptags()
	execute pathogen#infect()
	syntax on
	filetype plugin indent on
	" }}}
" Theme & Colors {{{
	" === Theme  & Colors ===

	" load the 'this scheme' colorscheme
	" runtime colors/evening.vim
    " runtime ~/.vim/colors/molokai/colors/molokai.vim " because the normal colorscheme command wasn't working
    " highlight Normal ctermfg=grey ctermbg=darkblue
    " set  t_Co=256 " recommended for gnome-terminals
    set termguicolors " gives nice results on my laptop
    " set background=light
    set background=dark
    " colorscheme molokai
    colorscheme stellarized
	" change the color of statements
	syntax enable
    " highlight Normal ctermfg=blue  ctermbg=lightred


    """
	" }}}
" Leader Mappings {{{
	" === Custom Leader ===
    " see Buffers & Windows for tabs & others
	" set your own personal modifier key to something handy
	let mapleader="," 
    " === leader mappings ===
    "new vertical split
	noremap <leader>o <c-w>v<cr> <c-w>l
    " new horiz split
	noremap <leader>h <c-w>s<cr> 
    " close split
	noremap <leader>x <c-w>c 
	" save file
	nnoremap <leader>s :w<cr>
	inoremap <leader>s <C-c>:w<cr>
	" quit file
	noremap <leader>q :q<cr>
	" to paste from system clipboard
	nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>
    " the following command allows to open and edit ~/.vimrc from anywhere
    nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
    " the following command allows to source ~/.vimrc from anywhere
    nnoremap <leader>sv :source $MYVIMRC<cr>
    nnoremap <leader>d :put =strftime(\"%B %d, %Y\")<cr>
    nnoremap <leader>g :!groff -mom letter_basic.mom > letter_basic.ps && xreader letter_basic.ps&<cr>
    nnoremap <leader>c "+yy
	"python
	autocmd Filetype python inoremap <leader>m if __name__ ==  "__main__":<enter>
    " }}}
" Custom mappings {{{
    "=== mappings ===
	" Enter command line mode using spacebar
	nnoremap <space> :
	nmap B ^
	nmap E $
    imap <c-h> <Left> 
    imap <c-l> <Right>
    nnoremap vv viw " highlights word around cursor
    " Insert full filepath
    nnoremap <C-f> :put =expand('%:p')<CR>
    nnoremap fp :put =expand('%:p')<CR>
    "Use <C-j> and <C-k> in commandline 
    cnoremap <c-j> <down>
    cnoremap <c-k> <up>
    " allows up / down selection of options when using Ctrl+N and Ctrl+P
    inoremap <C-d> <Down>
    inoremap <C-u> <Up> I
    " <C-k> is already used
    inoremap <C-h> <Left>
    inoremap <C-l> <Right>
    "
    "}}}
" Vimrc folding {{{
    " === vimrc folding settings ===
    set foldmethod=marker
    set foldlevel=0
    set modelines=1
    " set foldmethod=syntax
    "vim:foldmethod=marker:foldlevel=0
    "}}}
"Custom Commands {{{ 
    " === Custom commands ===
    "Type :WipeReg whenever you feel like cleaning up the all the registers!
    command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
    "Ctrl-P 
    set runtimepath^=~/.vim/bundle/ctrlp.vim
    " Shebang for new .py files
    augroup Shebang
      autocmd BufNewFile *.py 0put =\"#!/usr/bin/python3\<nl># -*- coding: utf-8 -*-\<nl>\"|$
      " autocmd BufNewFile *.txt 0put =\"%&plain\<nl>\"|$
    augroup END
    "}}}
" Buffers Windows Tabs {{{ 
    " === buffers windows tabs
    " ref: https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
    " Enable the list of buffers
    let g:airline#extensions#tabline#enabled = 1
    " Show just the filename
    let g:airline#extensions#tabline#fnamemod = ':t'
    " This allows buffers to be hidden if you've modified a buffer.
    " This is almost a must if you wish to use buffers in this way.
    set hidden

    " To open a new empty buffer
    nmap <leader>T :enew<cr>
    " Move to the next buffer
    nmap <leader>l :bnext<CR>
    " Move to the previous buffer
    nmap <leader>h :bprevious<CR>
    " Close the current buffer and move to the previous one
    " This replicates the idea of closing a tab
    nmap <leader>bq :bp <BAR> bd #<CR>
    " Show all open buffers and their status
    nmap <leader>bl :ls<CR>
    "}}}
" Dirs for swap files {{{ 
    "=== Directories for swp files
    set nobackup
    set noswapfile
    "
    " }}}
