# Path to your oh-my-zsh installation.
  # export ZSH=/home/ubuntu/.oh-my-zsh
  export ZSH=/home/donagh/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# # ZSH_THEME="agnoster"
# ZSH_THEME="candy-kingdom"
ZSH_THEME="crcandy"
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit
# Completion for kitty terminal
# kitty + complete setup zsh | source /dev/stdin

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting  
  colored-man-pages
  extract
)

source $ZSH/oh-my-zsh.sh

# User configuration
# To add a new path
# export PATH="your-dir:$PATH"
export PATH="/home/donagh/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/donagh/.fzf/bin"
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# donaghs
autoload -U zmv # meaning zsh mv command
# You can then run zmv to rename files according to a pattern. Both the pattern and the replacement text need to be quoted so that they are passed-as is to the zmv function which will expand them in due course.
# zmv '^*.*' '$f.md'
autoload -U compinit; compinit
# vi editor
# set -o vi
setopt VI # what is this?
setopt autocd
setopt autolist # e.g.in $HOME directory -> %ls /DoTAB ie follow ls /Do With  TAB
setopt extendedglob # extended globbbing e.g. ls -d ^*.py excludes .py files
setopt SHARE_HISTORY # uses same history for all sessions
# only fools wouldn't do this ;-) 
export EDITOR="vim"
# ALIASES
# see also bindkey below
# alias cx="clear"
alias hj='history'
alias ping='ping -c3 '
# NAVIGATION
alias ra='ranger'
alias dl='cd ~/Downloads/'
alias gsd="cd $HOME/sd35"
alias gll="cd $HOME/1Linux_Live_USB"
# alias gcc="cd $HOME/sd35/zim/Computer"
alias gpp="cd $HOME/sd35/2programming_repository/python"
alias ghh="cd $HOME/3holder"
# navigate to folder using ~gpl
alias gpl="cd /media/donagh/3520-FD13/2programming_repository/python/1python_projects/django_projects/lanner_django"
alias ds='cd ~/Documents'
alias hh='cd ~/'
alias cd..='cd ..'
# Edit config files
# alias vim='sudo vim '
# dot files now linked to the files in SD35/.../dot_files/dot_files
alias cb='cat ~/.bashrc'
alias cv='cat ~/.vimrc'
alias cz='cat ~/.zshrc'
alias vb='vim ~/.bashrc'
alias vv='vim ~/.vimrc'
alias vz="vim ~/.zshrc"
alias ni='nvim $HOME/.config/nvim/init.vim' # neovim, if installed
# Globals
alias -g G='| egrep -i --color=auto'
alias -g xn='| xargs -n 1'
alias -g GC='git commit -m "'
alias -g PS='ps aux | egrep -i --color=auto'
alias -g P='pwd -P'
# alias -g C=' | clipit'
alias -g C=' | gpaste-client'
alias -g lsd='du -s -- *(D) | sort -k1n' # list size of directories
alias -g nt='gnome-terminal && zsh -l' # open a new zsh terminal  
alias -g exa='~/Applications/exa-linux-x86_64' # modern ls
alias -g zz='zsh -l'
# passwords
alias -g passin='python3 /media/donagh/3520-FD13/2programming_repository/python/1python_projects/tkinter_GUI/passin_credentials/pw_data-input.py' # input new password
alias -g catt='cat /media/donagh/3520-FD13/zim/Computer/11SignUps.txt|ag -i -A5 '
alias -g passout='cat /media/donagh/3520-FD13/zim/Computer/11SignUps.txt|ag -i -A5 ' # alternative alias
# contacts
alias -g contin='python3 /media/donagh/3520-FD13/2programming_repository/python/1python_projects/tkinter_GUI/passin_credentials/contin.py' # input new contact
alias -g contout='cat /media/donagh/3520-FD13/zim/Business/CONTACTS/Contacts.txt | ag -i -A18 -B2 ' # get contact  
# Other
alias wett='curl wttr.in/limerick'
alias hp='ls --hide=*.py'
alias gett='$HOME/.scripts/get_password.sh'
alias contout='$HOME/contact_out.sh' # refers to contacts.csv which is /media/ubuntu/3520-FD13/0My_Folders/00Donaghs_ORG/14_Donaghs_CONTACTS/00_Main_Contacts.csv
# alias chk='cd $HOME && ./info.sh'
alias chk='$HOME/.scripts/info.sh'
alias ll='ls -la'
alias lls='ls | xargs -n1' # show ls in a single column
alias ld='ls -d */'
alias l.='ls -d .* --color=auto' # Show hidden files ##
alias pss='python -m SimpleHTTPServer 8000'
# shortcuts for activating venvs. pb python basic
alias pb='source $HOME/.virtualenvs/basic/bin/activate'
alias pf='source $HOME/.virtualenvs/flask/bin/activate'
alias pd='source $HOME/.virtualenvs/django/bin/activate'
alias zln='zmv -L'
alias zcp='zmv -C'
alias sb='source ~/.bashrc'
alias sz='source ~/.zshrc'
alias zs='zsh_stats' # lists last 20 commands with statistics
# alias ipi="ip -4 addr | grep 192 | sed 's/^[ \t]*//' | cut -d ' ' -f 2" | cut -d'/' -f1
alias ipi="ip -4 addr  | grep 192 | cut -d '/' -f1"
# alias ipe='curl ipinfo.io' # external ip address
alias ipe='dig @resolver1.opendns.com ANY myip.opendns.com +short' # external ip -- better
alias synaptic='sudo synaptic'
# git
alias st='git status'
alias cm='git commit -m '
alias gl='git log'
# alias ggp='git push git@github.com:Xiddler/xiddler.github.io.git gh-pages:master'
# speedtest
alias speedtest="curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
# output time in words
# alias t="calc -d 'read qtime; qtime(1)'" # sudo apt install apcalc SUMMER TIME
alias t="calc -d 'read qtime; qtime(0)'" # sudo apt install apcalc WINTER TIME
# get latest hanging stuff
alias hanging='cd $HOME/ziim/Computer/ && tail -n4 0_Hanging.txt && cd $HOME/ziim/Donaghs/00_Home/ && tail -n4 0_Hanging.txt'
# CLI dictionary
# alias dict='cat /media/donagh/3520-FD13/1donaghs-stuff/Dictionaries/Oxford_English_Dictionary/oxford_dict.txt | grep '
# CLI dictionary
alias def='~/.scripts/get_defs.sh '

# bindkeys see also $ zle -al
bindkey 'jk' vi-cmd-mode # switches to the command mode

# for urxvt terminal emulator
# xrdb ~/.Xresources  # may need to be in my .bashrc file though
TERM=xterm

# cd  /media/ubuntu/3520-FD13/2programming_repository/IT_projects/Dashboard_personal/ && gunicorn render_todo:app
# eval "`dircolors -b ~/.dircolors`"
# alias ls='ls --color=auto'

# powerline statusline for zsh 2018-08-05
. /usr/share/powerline/bindings/zsh/powerline.zsh
# fast file and directory autojump
# . /media/ubuntu/3520-FD13/compressed_utilities/zsh/z/z.sh

# ls_colors
eval "`dircolors -b ~/.dircolors`"
alias ls='ls --color=auto'
alias lk='ls -1v'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Navigation shortcuts
bal() { cd $HOME/sd35/0My_Folders/11Balmurry/Balmurry_Sale/}
sd3() { cd $HOME/sd35/}
ziim() { cd $HOME/sd35/zim}
don() { cd $HOME/sd35/1donaghs-stuff/Big_Projects/2019_new_earn}
app() { cd $HOME/Applications}
work() { cd /media/donagh/015C-2582/Donaghs_WORKSEARCH}
ts() { cd $HOME/TESTING }
books() {cd $HOME/sd35/books }

# where the -U stands for unique, tells the shell that it should not add anything to $PATH if it's there already
typeset -U path

# my easy journal 
journal() {
        mkdir -p ~/journal/`date +%Y`
        $EDITOR ~/journal/`date +%Y`/`date +%m-%d`
    }
alias jj=journal # opens todays journal file in vim for editing.

# grep hist
histgrep () 
  {
  grep -r "$@" ~/.history
  history | grep "$@"
  }
alias hg=histgrep

# speaking clock in the terminal
alias tn='t | festival --tts'
alias tn='t | spd-say --pipe-mode'

# To stop ranger from loading both the default and your custom rc.conf,
#  please set the environment variable RANGER_LOAD_DEFAULT_RC to FALSE.
# # ranger default config file rc.conf 
export RANGER_LOAD_DEFAULT_RC=false


