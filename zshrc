# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="duellj"
#ZSH_THEME="rkj-repos"
#ZSH_THEME="rkj"
ZSH_THEME="xiong-chiamiov-plus"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias sshlab="ssh wengsht@172.18.184.163"
alias gitadd="git add *"
alias gitcommit="git commit -am "
alias gitpush="git push origin master"

alias cdcpp="cd ~/Dropbox/C++助教/作业汇总/"
alias cdweb="cd ~/Dropbox/安全助教/"
alias cdwiki="cd ~/Dropbox/wiki/"

alias openwiki="open /Users/wengsht/Program/wengsht_wiki/index.html"
alias webscarab="java -jar /Users/wengsht/Program/WebScarab/webscarab.jar"

# Customize to your needs...
#
bindkey -e
bindkey '^[[1;9D' forward-word
bindkey '^[[1;9C' backward-word
bindkey '^[[1;9E' backward-delete-word

