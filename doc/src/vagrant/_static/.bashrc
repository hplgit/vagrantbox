# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files for examples

export PYTHONPATH=$PYTHONPATH:$HOME/pythonlib
export PATH=$PATH:$HOME/bin

# Create some aliases for rsync commands for copying files:
rsync_basic="-rtDvz -u -e ssh -b"
rsync_excl="--exclude-from=$HOME/.rsyncexclude"
rsync_del="--suffix=.rsync~ --delete --force"
scp_rsync="rsync $rsync_basic $rsync_excl"
scp_rsync_del="$scp_rsync $rsync_del"
alias scp_rsync="$scp_rsync"
alias scp_rsync_del="$scp_rsync_del"

# If running interactively, then:
if [ "$PS1" ]; then
    alias ls='ls -sF'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'


    # enable programmable completion features (you don't need to enable
    # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
    # sources /etc/bash.bashrc).
    if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
        . /etc/bash_completion
    fi

    # set a new prompt and the directory as window title

    # PROMPT_DIRTRIM=1 makes the dir in window title have 1 trailing dir name
    # (instead of the whole path)
    export PROMPT_DIRTRIM=1

    # Let prompt in terminal window (PS1) display username, time and
    # current working directory
    PS1='\u:\D{%H.%M} \W> '
    # Add directory info to the title bar: (often done in terminal prefs too)
    PS1=$PS1"\[\e]0;\w\a\]"
fi
