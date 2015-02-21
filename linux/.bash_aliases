alias fucktildes='rm -f *\~ && rm -f .*\~ && rm -f *#'
alias ll='ls -l'
alias la='ls -lA'
alias lh='ls -lh'
alias lt='ls -lt'
alias l='ls -CF'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

alias edit='vim ~/.bash_aliases'
alias sobashrc='source ~/.bashrc'

alias b='bzr'
alias st='git status'

export M2_HOME='/home/polux/Softwares/apache-maven-3.1.1'
export EDITOR='/usr/bin/vim'

# Permet de récupérer l'IP d'un container Docker.
function dockertest {
  docker inspect $1 | grep IPAddress | cut -d \" -f 4
}

# SSH magic qui permet de récupérer un tunnel SSH vers yoda.
alias vpn='ssh -p 80 -D 1234 polux@yoda'

# Pour Maven
export M2_HOME=/home/polux/Softwares/apache-maven-3.2.5
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

export PATH="$PATH:~/Softwares/vert.x-2.1M2/bin"
export PATH="$PATH:~/Softwares/mongodb-linux-x86_64-2.6.7/bin"
export PATH="$PATH:~/Softwares/gradle-1.12/bin"
export PATH="$PATH:~/Softwares/node-v0.10.36-linux-x64/bin"

# Pour tmux
#chmod 777 ~/.tmux
#alias tt='tmux -S ~/.tmux'

#PostgreSQL
alias bdd='psql poluxbdd'

# Pour Java
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
#export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

