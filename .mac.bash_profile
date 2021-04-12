
alias l='ls -a -G'
alias ll='ls -a -G -l'
alias nosound='sudo killall coreaudiod'

mygrep()
{
grep -r "$1" * | grep -v ".svn" | grep -v "Test"
}
alias g=mygrep

function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
  echo "("${ref#refs/heads/}") ";
}

PS1="[\[\033[1;32m\]\u@\h \w\[\033[0m\]] \[\033[0m\]\[\033[1;36m\]\$(git_branch)\[\033[0;33m\]\[\033[0m\]$ "

