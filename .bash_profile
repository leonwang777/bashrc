# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

#eval $(ssh-agent -s)
#ssh -T git@gitlab.com
#ssh -T git@github.com
export GOPATH=$HOME/WorkSpace/Gowork
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOPATH/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/:/usr/lib/x86_64-linux-gnu/tcl8.6