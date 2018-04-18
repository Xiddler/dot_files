# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  # export ZSH=/home/ubuntu/.oh-my-zsh
  export ZSH=/home/ubuntu/dot_files/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="candy-kingdom"
ZSH_THEME="candy"

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
autoload -U zmv
autoload -U compinit; compinit
# You can then run zmv to rename files according to a pattern. Both the pattern and the replacement text need to be quoted so that they are passed-as is to the zmv function which will expand them in due course.
# zmv '^*.*' '$f.md'
# vi editor
# set -o vi
setopt VI # what is this?
setopt autocd
# only fools wouldn't do this ;-) 
export EDITOR="vim"
# ALIASES
alias cx="clear"
alias hj='history'
# NAVIGATION
alias dl='cd ~/Downloads/'
alias gsd="cd $HOME/sd35"
alias gll="cd $HOME/1Linux_Live_USB"
alias gcc="cd $HOME/sd35/zim/Computer"
alias gpp="cd $HOME/sd35/2programming_repository/python"
alias ghh="cd $HOME/3holder"
alias ds='cd ~/Documents'
alias hh='cd ~/'
alias cd..='cd ..'
# Edit config files
alias vb='vim ~/dot_files/bashrc'
alias vv='vim ~/dot_files/vimrc'
alias vz="vim $HOME/dot_files/zshrc"
# Globals
alias -g G='| egrep -i --color=auto'
alias -g xn='| xargs -n 1'
alias -g GC='git commit -m "'
alias -g PS='ps aux '
alias -g P='pwd -P'
alias -g C=' | clipit'
# Other
alias wett='curl wttr.in/limerick'
alias hp='ls --hide=*.py'
alias gett='$HOME/get_password.sh'
alias chk='cd $HOME && ./info.sh'
alias ll='ls -la'
alias l.='ls -d .* --color=auto' # Show hidden files ##
alias pss='python -m SimpleHTTPServer 8000'
alias zln='zmv -L'
alias zcp='zmv -C'
alias sz='source ~/dot_files/zshrc'
alias sb='source ~/dot_files/bashrc'
alias zs='zsh_stats' # lists last 20 commands with statistics
alias ipi='ifconfig|grep 168.11 | cut -d: -f2' # internal ipaddress
alias ipe='curl ipinfo.io' # external ip address
alias synaptic='sudo synaptic'
# git
alias st='git status'
alias cm='git commit -m '
alias gl='git log'
alias ggp='git push git@github.com:Xiddler/xiddler.github.io.git gh-pages:master'
# speedtest
alias speedtest="curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
#
