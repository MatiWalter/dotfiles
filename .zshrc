export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias cl='clear'
alias py='python3'
alias env='source env/bin/activate'
alias denv='deactivate'
alias pipir='pip install -r requirements.txt'
alias checkout='cd ~/muvinai/py_checkout3; env; code .'
alias l.='ls -A | egrep "^\."'
alias cd..='cd ..'
alias pdw='pwd'
alias df='df -h'
alias userlist='cut -d: -f1 /etc/passwd | sort'
alias myip='curl ipinfo.io/json'
alias lt='ls --human-readable --size -1 -S --classify'
alias left='ls -t -1 -long'
alias hg='history | grep'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"


ex() {
  if [ -d $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar x $1;;
      *.gz) gunzip $1;;
      *.tar) tar xf $1;;
      *.tbz2) tar xjf $1;;
      *.tgz) tar xzf $1;;
      *.zip) unzip $1;;
      *.Z) uncompress $1;;
      *.7z) 7z x $1;;
      *.deb) ar x $1;;
      *.tar.xz) tar xf $1;;
      *.tar.zst) tar xf $1;;
      *) echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}