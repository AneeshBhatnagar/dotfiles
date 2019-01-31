# Different alias settings for quick access

alias ll="ls -al"
alias rm="rm -i"
alias rmi="rm"
alias rmf="rm -rf"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u:\[\033[33;1m\]\W\[\033[m\]\[\e[32m\]\$(parse_git_branch)\\[\e[m\]$ "

