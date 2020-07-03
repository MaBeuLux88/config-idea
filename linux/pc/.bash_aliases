alias fucktildes='rm -f *\~ && rm -f .*\~ && rm -f *#'
alias ll='ls -l'
alias la='ls -lA'
alias lh='ls -lh'
alias lt='ls -lt'
alias ltr='ls -ltr'
alias l='ls -CF'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias s='su -'
alias up='sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y'
alias stop='shutdown -h now'
alias mouse='watch -n 0.1 xdotool getmouselocation'
alias edit='vim ~/.bash_aliases'
alias conf='vim ~/.config/i3/config'
alias sobashrc='source ~/.bashrc'
alias chrome="ps aux | grep chrome | grep -v grep | sed 's/ \+/\t/g' | cut -f4 | paste -s -d + - | bc"

export EDITOR='/usr/bin/vim'

# Git
alias github='xclip ~/Documents/github-token.txt'
alias st='git status'
alias br='git br -a'
alias gitkall='gitk --all'
function pr {
  git fetch upstream pull/$1/head:pr-$1
}
# git push git@github.com:kenwalger/devhub-content.git pr-96:csharp-crud

# Docker
alias dc='docker-compose'

# Maven
export M2_HOME=/usr/share/maven
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# NodeJS
export NODE_PATH="~/Softwares/node-v13.12.0-linux-x64/lib/node_modules/"
export PATH="$PATH:~/Softwares/node-v13.12.0-linux-x64/bin"

# Softwares folder
export PATH="$PATH:~/Softwares/postman"
export PATH="$PATH:~/Softwares/diff-so-fancy"
export PATH="$PATH:~/Softwares/bin"
export PATH="$PATH:~/Softwares/awscliv2/v2/current/bin"
export PATH="$PATH:~/Softwares/idea-IU-201.7846.76/bin"
export PATH="$PATH:~/Softwares/pycharm-2020.1.2/bin"
export PATH="$PATH:~/Softwares/WebStorm-191.7479.14/bin"
export PATH="$PATH:~/Softwares/mongodb-database-tools-debian10-x86_64-100.0.2/bin"
export PATH="$PATH:~/Softwares/mongodb-linux-x86_64-enterprise-debian10-4.2.8/bin"

# Java
#export JAVA_HOME="/usr/lib/jvm/java-1.12.0-openjdk-amd64"
export JAVA_HOME="/usr/lib/jvm/java-1.13.0-openjdk-amd64"

# Python
alias p=python3.8

# MongoDB
alias mongosh="docker run -it --rm --network host mabeulux88/mongosh:latest"
alias psm='ps aux | grep -v grep | egrep "mongo[s|d] " --color'
alias kam='killall mongod mongos'
alias mdb='docker run --rm -d -p 27017:27017 -h $(hostname) --name mongo mongo:4.4-rc-bionic --replSet=test && sleep 4 && docker exec mongo mongo --eval "rs.initiate();"'
alias m='docker exec -it mongo mongo --quiet'

# thefuck
eval $(thefuck --alias fuck)

# Java starter function
function starter {
  wget https://github.com/MaBeuLux88/starter/archive/master.zip
  unzip -qq master.zip
  for project in "$@"
  do
    cp -r starter-master ${project}
    cd ${project}
    ./init.sh -ng ${project}
    cd ..
  done
  rm -rf master.zip starter-master
}

