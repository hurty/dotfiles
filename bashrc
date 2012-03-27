export EDITOR="mvim"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Common aliases
alias ..="cd .."
alias ll="ls -l"
alias l="ls -l"
alias la="ls -la"
alias c="clear"
alias v="mvim"

# Databases
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Git aliases
alias gb="git branch -a"
alias gs="git status"
alias gp="git pull"

# Symfony aliases
alias sf="app/console"

# Prompt style
PS1="\n\u@\h  \w \$(parse_git_branch)\\n→ "

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Ruby environment
eval "$(rbenv init -)"
