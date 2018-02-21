"https://dougblack.io/words/a-good-vimrc.html#fold
"
    " Mininimum settings {{{
	"=== Min settings === 
	set nocompatible
	set <esc>=jk "" my inline comment in a set command
	set relativenumber
	"}}}
    " Spaces And Tabs {{{ 
	"=== Spaces And Tabs ===
	set tabstop=4
	set shiftwidth=4
	set smarttab
	set softtabstop=4   " number of spaces in tab when editing
	set expandtab       " tabs are spaces
	" }}}
    " UI Config {{{
	"===  UI Config ===

	" Enter command line mode.
	nnoremap <space> :

	set wildmenu            " visual autocomplete for command menu

	"allow  yanked text to be copied to the X11 system clipboard....
	set clipboard=unnamedplus
		" turn off highlight at underscore in .md files 
	" :syn clear markdownError
		hi link markdownError normal
    " toggle number and realativenumber
    nnoremap <C-n> :exe 'set nu!' &nu ? 'rnu!' : ''
	" }}}
    " Searching {{{
	"=== Searching ===
	set incsearch 
	set ignorecase            " Make searches case-insensitive.
    set smartcase
	" }}}
    " Folding {{{
	"=== folding ===
	set foldmethod=indent   " fold based on indent level
	set foldnestmax=10      " max 10 depth
	set foldenable          " don't fold files by default on open
	set foldlevelstart=10   " start with fold level of 1
	" }}}
    " Custom Movements {{{
    	"=== Custom Movements ===
	"navigation tips
	"    H – Go to the first line of current screen.
	"    M – Go to the middle line of current screen.
	"    L – Go to the last line of current screen.
	"    ctrl+f – Jump forward one full screen.
	"    ctrl+b – Jump backwards one full screen
	"    ctrl+d – Jump forward (down) a half screen
	"    ctrl+u – Jump back (up) one half screen
	" move to beginning/end of line
	nnoremap B ^
	nnoremap E $
    "set the cursor to move down a single row on the screen
    "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    nnoremap j gj
    nnoremap k gk
	" use ctrl-h/j/k/l to switch between splits
	map <c-j> <c-w>j
	map <c-k> <c-w>k
	map <c-l> <c-w>l
	map <c-h> <c-w>h
	" }}}
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
	syntax enable
	colorscheme vividchalk
	set background=light

        "to toggle them automatically for you:
        map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
	" cd ~/.vim/bundle && git clone https://github.com/tpope/vim-vividchalk
	" }}}
    " Statusline {{{
    "=== Statusline ===
    set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
    :set laststatus=2 
    "}}}
    " Folding {{{
    " === Folding settings ===
    set foldmethod=marker
    set foldlevel=0
    set modelines=1
    "vim:foldmethod=marker:foldlevel=0
    "}}}
    "Launch Confi
    "Tmu Config
    "Autogroups
    "Backups
    "Custom Functions
