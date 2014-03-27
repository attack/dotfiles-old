parse_git_branch () {
  git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)# (git::\1)#'
}

BLACK="\[\033[0;38m\]"
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
GREEN="\[\033[0;32m\]"

# export PS1="$ "
# export PS1="\u$ "
#export PS1="$BLACK[\u@$RED\h $GREEN\w$RED_BOLD\$(parse_git_branch)$BLACK] "
