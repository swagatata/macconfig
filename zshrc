# Customize to your needs...
alias cl="clear"
alias s5="ssh swagat-5.desktop.amazon.com"
alias mfp="ssh javary-mysize-12001.dub2.amazon.com"
alias ubuntu="ssh swagat-ubuntu.aka.amazon.com"
alias qa="ssh integ-node-64043.pdx4.amazon.com"

alias mc="make clean"

# git shortcuts
# alias g="git "
alias gs="git status"
alias gd="git diff --word-diff=color"
alias gc="git diff --cached --word-diff=color"
alias gshow="git show --pretty=\"format:\" --name-only"
alias gl="git log --word-diff=color --stat"
alias gl1="git log --word-diff=color --stat --oneline"
alias gl="git pull"
alias gp="git push"
alias gc="git commit"
alias gsh="git stash"
alias gh="git help"
alias gck="git checkout"
alias gunstage="git checkout -- " 

# fb alias
alias dev1="et devvm4836.lla1.facebook.com:8082"
alias dev2="ssh devvm2686.lla2.facebook.com"

#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
#export PATH=$PATH:/Users/swagat/tools/sbt/bin
#export PATH=$PATH:/Users/swagat/ubuntu/ubuntu/google_appengine
#export PATH=$PATH:~/Cloud9BrazilBuild-1.0/bin
#export PATH=$PATH:~/Downloads/eclipse/
#export PATH=$PATH:/usr/local/opt/gettext/bin/
#s4

#alias bb="brazil-build"

#maven
#export MAVEN_HOME=/Users/swagat/libs/apache-maven-3.2.1
#export PATH=$PATH:$MAVEN_HOME/bin

#export PYTHONSTARTUP=~/.pythonrc
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH="$(pyenv root)/shims:$PATH"

source $(pyenv root)/completions/pyenv.zsh
