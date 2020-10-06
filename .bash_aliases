# For windows 10 programs

if [   "$(uname -r|grep Microsoft)" != '' ]; then
   alias vscode="/mnt/c/Program\ Files/Microsoft\ VS\ Code/Code.exe"
   alias atom="/mnt/c/Users/LeonWang/AppData/Local/atom/atom.exe"
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias diff='diff --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lf="ls -l | egrep -v '^d'"
alias laf="ls -al | egrep -v '^d'"
alias dirw='ls -d */'
alias dirl='ls -dl */'
alias llk='ls -alFsk'
alias lls='ls -alFS'
alias llt='ls -alFt'
alias llX='ls -alFX'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# alias chrome='/usr/bin/google-chrome'

alias linuxver='uname -a'
alias kernelrel='uname -v'
alias kernelver='uname -r'
# disk usage for file systems
alias fsls='df -ah'

# check cpu usage
alias ps='ps aux'
alias hist='history'
# for untar and ungzip, unbz
alias txgz='tar xvzf'
alias txbz='tar xvjf'
alias txxz='tar xvJf'
alias tcgz='tar -cvzf'		#.tgz
alias tcbz='tar -cvjf'		#.tbz
alias tcxz='tar -cvJf'   	#.txz



# check network ports ana running services
alias nstat='sudo netstat -ntulp'
alias sstu='sudo ss -ntulpr'
alias ipaddr='ip -c addr'
alias nmapport='sudo nmap -sT -sU -O localhost'
#list opened files of tcp network port 1 ~ 1024
alias lsoftcp='lsof -i TCP:1-1024'
#shows the list of all network connections ‘LISTENING & ESTABLISHED’.
alias lsofnet='lsof -i'
# list all filed opened of the user
alias lsofusr='lsof -u'
#list all TCP / UDP connections
alias lsoftu='lsof -i tcp; lsof -i udp;'
#list all processes which are listening th particular port
#alias lsofport='lsof -i :port' 		# attach port number
alias fuser='fuser 80/tcp'

# kill
alias killupro='kill -9 `lsof -t -u [usrname]`'
# tmux
alias killtm='tmux kill-server'
alias tmls='tmux ls'
alias tmlss='tmux list-sessions'
alias tmlsw='tmux list-windows'
alias tmlsp='tmux list-panes'
alias tmkey='tmux list-keys'
alias tmkw='tmux kill-window -t'
alias tmkallw='tmux kill-window -a'
alias tmkp='tmux kill-pane -t'
alias tmkallp='tmux kill-pane -a'
alias tmkeys='tmus list-keys'
alias tmpid='tmux display-panes -d 0'
alias tmks='tmux kill-session -t'

# Frequently apps
alias mi='/snap/bin/micro'
alias chrome='/usr/bin/google-chrome'
alias chromium='/usr/bin/chromium-browser'
alias mkdir='mkdir -p'
alias virtualenv='virtualenv -p python3'

alias dkps='sudo docker ps -a -s'
alias dkr='sudo docker rm'
alias dkri='sudo docker rmi'
alias dks='sudo docker stop'
alias dkrdit='sudo docker run -dit'
alias dkeit='sudo docker exec -it'
alias dknwls='sudo docker network ls'
alias dki='sudo docker images'

alias ccat='/usr/games/lolcat'
alias goaml='cd ~/ProjSrc/AML'
alias rcloned='/usr/bin/screen -d -m -S rcmount /usr/bin/rclone mount --allow-non-empty --daemon --write-back-cache onedrive:/ ~/OneDrv/'
alias cdir='. ~/bin/godir'


# Alias for conda
alias concre='conda create python=3.7 --name '
alias conenvls='conda info --envs'		# or conda env list
alias concon='~/anaconda3/bin/conda update anaconda'
alias conon='conda activate'
alias conoff='conda deactivate'
alias conupdate='~/anaconda3/bin/conda update -n base conda ; ~/anaconda3/bin/conda update anaconda'

alias rmsshhost='ssh-keygen -f "/home/leon/.ssh/known_hosts" -R'
alias cenv='virtualenv --clear -p python3.7'

alias amldev='ssh graphen@development.eastasia.cloudapp.azure.com'
alias amlkib='chrome --new-window http://development.eastasia.cloudapp.azure.com:5601'

# disk usage status
alias dusum='du -hs'		# total size of path
# disk usage and sort by size ascending
alias duhs='du -hs -- * | sort -h'
alias duhsg='du -hs -- * | sort -h | grep'
# disk usage and sort by size descending
alias duhsr='du -hs -- * | sort -h -r'
alias duhsrg='du -hs -- * | sort -h -r | grep'

alias joboot='sudo journalctl -b -l'


alias spstate='sudo snap services'
alias spdn='sudo snap stop'
alias spup='sudo snap start'
alias spreup='sudo snap restart'

alias edalias='mi ~/.bash_aliases'

alias azD='ssh graphen@azdev'
alias 2aiaml='ssh ubuntu@aiamldev001'
alias checkport='nc -zvw10'
alias 2azdev='ssh graphen@azdev'
alias 2leon='ssh centos@leonardo'

# for VNC server / viewer
alias vncvw='xtigervncviewer -SecurityTypes VncAuth -passwd /home/leon/.vnc/passwd :1'
alias vnckill='vncserver -kill :1'
alias vncd='tigervncserver -xstartup /usr/bin/terminator'

# Systemctl
alias syss='systemctl status'
alias syson='sudo systemctl start'
alias sysoff='sudo systemctl stop'
alias sysre='sudo systemctl restart'
alias sysen='sudo systemctl enable'
alias sysdis='sudo systemctl disable'

# DNS look up for ip
alias digip='dig +short'

# Git
alias gipty='git commit -m --allow-empty-message'
alias gip='git push'
alias gi+='git add .'
alias gim='git commit -m'

alias snapdis='sudo snap stop --disable'

alias 2amlvm='ssh leon@aiamlsvr'
alias tree1='tree -L 1'
alias reme='remarkable'
alias doreme='typora'               # markdown viewer by typora
alias tb68='~/Downloads/thunderbird/thunderbird &'
alias mknm='ln -s /home/leon/Downloads/testcodes/shared_node_modules node_modules'
alias treex='tree -I'
alias lsservices='sudo systemctl list-unit-files --type=service'

# For wireless network
alias wfdstatus='nmcli device' # d: abbreviation of device
alias wfdshow='nmcli d show'
alias wfcshow='nmcli c show' # c: connection
alias wfshow='nmcli d show wlp2s0'
alias wfstate='nmcli r'
alias wfss='wavemon' # wifi signal strength'
alias wfui='nmtui'
