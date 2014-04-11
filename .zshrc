# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="peepcode"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

plugins=(git osx rails)

CTAGS=/usr/local/bin/ctags

alias rake="noglob rake"
alias bundle="nocorrect bundle"
alias zeus="nocorrect zeus"

alias glog='git log --oneline --decorate --color --graph'

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/heroku/bin:/Library/Frameworks/JRuby.framework/Versions/Current/bin:~/android/platform-tools:~/android/tools:~/emscripten:$PATH

export LC_ALL="en_US.UTF-8"

# rbenv
eval "$(rbenv init -)"

# Enable autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh