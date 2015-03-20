# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="duellj"
ZSH_THEME="rkj-repos"
#ZSH_THEME="rkj"
#ZSH_THEME="xiong-chiamiov-plus"

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
alias sshvir="ssh wengsht@172.18.184.164"

alias gitadd="git add *"
alias gitcommit="git commit -am "
alias gitpush="git push origin master"

alias tmuxshow="tmux list-panes -a"

alias openwiki="open /Users/wengsht/Program/wengsht_wiki/index.html"
alias webscarab="java -jar /Users/wengsht/Program/WebScarab/webscarab.jar"




alias life="python ~/Program/Life/life/main.py"

alias rscp="rsync -v -P -e ssh"
# Customize to your needs...
#
bindkey -e
bindkey '^[[1;9D' forward-word
bindkey '^[[1;9C' backward-word
bindkey '^[[1;9E' backward-delete-word

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/HOME"
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/jre/bin:/usr/local/cuda/bin:~/Program/kaldi-trunk-git/tools/openfst/bin:/Users/wengsht/Program/kaldi-trunk-git/src/featbin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib
alias mit-scheme="/Applications/MIT:GNU\ Scheme.app/Contents/Resources/mit-scheme"

alias tssh="ssh panda -t 'tmux list-session; if [[ $? -eq  0 ]]; then tmux attach; else tmux;fi'"
export CUDA_INSTALL_PATH=/usr/local/cuda

export PATH=$PATH:$HOME/Program/hadoop-2.4.0/bin

export PROJ3_ROOT=/Users/wengsht/Course/HowToWriteFastCode/Project/fastcode/Proj3


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cppunit/lib
