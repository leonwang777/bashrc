# For windows 10 programs
alias vscode="/mnt/c/Program Files/Microsoft VS Code/Code.exe"


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

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

# disk usage status
alias duls='du -sh'
# check network ports ana running services
alias nstat='sudo netstat -tulpn'
alias ipaddr='ip -c addr'

# check cpu usage
alias ps='ps aux'

alias hist='history'
#

alias txgz='tar xvzf'
alias txbz='tar xvjf'

#list opened files of tcp network port 1 ~ 1024 

alias lsoftcp='lsof -i TCP:1-1024'

#shows the list of all network connections ‘LISTENING & ESTABLISHED’.
alias lsofnet='lsof -i'

# list all filed opened of the user
alias lsofusr='lsof -u'

#list all TCP / UDP connections
alias lsoftu='lsof -i tcp; lsof -i udp;'

#list all processes which are listening th particular port
alias lsofport='lsof -i :[port]'

# kill
alias killupro='kill -9 `lsof -t -u [usrname]`'



alias killtm='tmux kill-server'
alias tmls='tmux ls'
alias tmlss='tmux list-sessions'
alias tmlsw='tmux list-windows'