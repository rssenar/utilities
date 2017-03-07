# as of 2016-05-01 06.07 PM
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# terminal colors
red=$(tput setaf 161);
cyan=$(tput setaf 14);
yellow=$(tput setaf 228);
white=$(tput setaf 255);
bold=$(tput bold);
reset=$(tput sgr0);
# prompt
PS1="\[${bold}\]\[${red}\]\u"; # bold & username
PS1+="\[${white}\] at ";
PS1+="\[${cyan}\]\h"; # host
PS1+="\[${white}\] in ";
PS1+="\[${yellow}\]\w"; # working directory
PS1+="\[${white}\]\$(parse_git_branch)"; # git branch
PS1+="\n";
PS1+="\[${white}\]>> \[${reset}\]"; # '->' and reset colors
export PS1

# Aliases
alias ll='ls -la' #ll='ls -lahG'

alias home='cd ~'
alias desk='cd ~/desktop/'
alias hist='history'
alias py2='workon py2env'
alias py3='workon py3env'
alias deac='deactivate'
alias proj='cd /Users/rssenar/Dropbox/hub/Projects'
alias glog='git log --oneline -30 --graph --all --decorate'

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias back='cd $OLDPWD'

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'
alias chrome="open -a 'Google Chrome'"
alias firefox="open -a 'Firefox'"

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'
#alias grm='git rm $(git ls-files --deleted)'

# GoLang Settings
export GOBIN=$HOME/Dropbox/HUB/Projects/GoLang/bin
export GOPATH=$HOME/Dropbox/HUB/Projects/GoLang
export PATH=$HOME/Dropbox/HUB/Projects/GoLang/bin:$PATH

# GoLang Python Virtual Env Setting
export HISTSIZE=10000 # 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %P ' #using strftime format
export HISTCONTROL=ignoreboth #ignoredupes:ignorespace
export HISTIGNORE="history:h:pwd:exit:df:ls:ls -la:ll"
export WORKON_HOME=~/Envs
#source /usr/local/bin/virtualenvwrapper.sh

#code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh
