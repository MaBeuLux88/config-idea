alias fucktildes='rm -f *\~ && rm -f *#'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias edit='vim ~/.bash_aliases'
alias sobashrc='source ~/.bashrc'

alias b='bzr'

export M2_HOME='/home/polux/Softwares/apache-maven-3.1.1'

export EDITOR='/usr/bin/vim'

alias st='git status'

# Permet de récupérer l'IP d'un container Docker.
function dockertest {
  docker inspect $1 | grep IPAddress | cut -d \" -f 4
}

# SSH magic qui permet de récupérer un tunnel SSH vers yoda.
alias vpn='ssh -p 80 -D 1234 polux@yoda'
