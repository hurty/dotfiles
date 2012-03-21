export EDITOR="mvim"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

alias ..="cd .."
alias ll="ls -l"
alias l="ls -l"
alias la="ls -la"
alias c="clear"
alias b="git branch -a"
alias s="git status"

# Prompt style
PS1="\n\u@\h  \w \$(parse_git_branch)\\n→ "

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Ruby environment
eval "$(rbenv init -)"