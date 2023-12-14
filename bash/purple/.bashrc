# Set custom colors to PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[38;5;105;1m\]\u@\h \[\e[38;5;141m\]\W \[\e[38;5;171m\]\$(parse_git_branch)\[\e[00m\] \[\e[38;5;146m\]\e[0m\n$ "
