# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias cl="clear"
alias s5="ssh swagat-5.desktop.amazon.com"
alias mfp="ssh javary-mysize-12001.dub2.amazon.com"
alias ubuntu="ssh swagat-ubuntu.aka.amazon.com"
alias qa="ssh integ-node-64043.pdx4.amazon.com"

alias mc="make clean"

# git shortcuts
# alias g="git "
alias gst="git status"
alias gd="git diff --word-diff=color"
alias gc="git diff --cached --word-diff=color"
alias gshow="git show --pretty=\"format:\" --name-only"
alias gl="git log --word-diff=color --stat"
alias gl1="git log --word-diff=color --stat --oneline"
alias gpl="git pull"
alias gpsh="git push"
alias gct="git commit"
alias gsh="git stash"
alias gh="git help"
alias gch="git checkout"
alias gunstage="git checkout -- " 

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
export PATH=$PATH:/Users/swagat/tools/sbt/bin
export PATH=$PATH:/Users/swagat/ubuntu/ubuntu/google_appengine
export PATH=$PATH:~/Cloud9BrazilBuild-1.0/bin
export PATH=$PATH:~/Downloads/eclipse/
export PATH=$PATH:/usr/local/opt/gettext/bin/
#s4

alias bb="brazil-build"

#maven
export MAVEN_HOME=/Users/swagat/libs/apache-maven-3.2.1
export PATH=$PATH:$MAVEN_HOME/bin

export PYTHONSTARTUP=~/.pythonrc
