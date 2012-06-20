export EDITOR="mvim"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Common aliases
alias ..="cd .."
alias ll="ls -l"
alias l="ls -l"
alias la="ls -la"
alias c="clear"
alias v="mvim"
alias s='open -a "Sublime Text 2"'
alias dotfiles="s ~/dotfiles"
alias bashrc="s ~/dotfiles/bashrc"

# Databases
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias mystart="mysql.server start"
alias mystop="mysql.server stop"

# Git aliases
alias gb="git branch -a"
alias gs="git status -sb"
alias gp="git pull"
alias ga="git add"
alias gc="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gl="git lg"
alias glp="git log -p"
alias gds="git diff --staged"
alias github="hub browse"

# Symfony aliases
alias sf="app/console"
alias sfp="app/console --env=prod"
alias dl_composer="wget http://getcomposer.org/composer.phar"
alias fl="app/console doctrine:fixtures:load"

# Prompt style
PS1="\n\u@\h  \w \$(parse_git_branch)\\n→ "

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Ruby environment
eval "$(rbenv init -)"
