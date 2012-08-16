# MacPorts Installer addition on 2011-07-19_at_07:17:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
export PATH=/opt/local/lib/postgresql91/bin:$PATH
export NODE_PATH="/opt/local/lib/node_modules/"


# Bash completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi


# Django Completion
. ~/.django/django_bash_completion


# Pip completion
_pip_completion()
{
   COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                  COMP_CWORD=$COMP_CWORD \
                  PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip


# Terminal colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# Default Editor
# export EDITOR=/usr/bin/mate

# Bash format
# PS1="[\d \u@\s] ~/\W:"
PS1='\[\033[01;32m\]\u\[\033[01;34m\]::\[\033[01;31m\]\h \[\033[00;34m\]{ \[\033[01;34m\]\w \[\033[00;34m\]}\[\033[01;32m\]-> \[\033[00m\]'


# Bash history remove dublicates
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend


# Bash shortcuts
alias ..='cd ..'
alias ll='ls -ahlF'
alias getip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2'


# Shortcut for activating a virtualenv (assumed to be in `pwd`/envs)
alias activate='. envs/bin/activate'


# cd to envs folder
alias envs='cd /Users/typhoon/envs'


# Removes all *.pyc from current directory and all subdirectories
alias pycclean='find . -name "*.pyc" -exec rm {} \;'


# Shortcut to determine your current PYTHONPATH, useful in debugging when switching between virtualenv’s
alias pypath='python -c "import sys; print sys.path" | tr "," "\n" | grep -v "egg"'


# django management commands aliases
alias run='.manage.py runserver 0.0.0.0:8000'
alias syncdb='.manage.py syncdb'
alias migrate='.manage.py migrate'
alias collectstatic='.manage.py collectstatic'
alias loaddata='.manage.py loaddata'
alias shell='.manage.py shell_plus'
alias dbshell='.manage.py dbshell'
alias superuser='.manage.py createsuperuser'
alias rebuild='.manage.py rebuild_index --noinput'


# Shortcut to symlink the xapian libs to your virtualenv
# (assumed to be in `pwd`/env)
alias lnxapian='ln -s /opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/xapian envs/lib/python2.7/site-packages/. '


# Shortcut for PostgreSQL server start/stop 
alias pgstart='sudo su postgres -c '\''/opt/local/lib/postgresql91/bin/pg_ctl -D /opt/local/var/db/postgresql91/defaultdb start'\'''
# alias pgstart='sudo su postgres -c '\''/opt/local/lib/postgresql91/bin/postgres -D /opt/local/var/db/postgresql91/defaultdb'\'''
alias pgstop='sudo su postgres -c '\''/opt/local/lib/postgresql91/bin/pg_ctl -D /opt/local/var/db/postgresql91/defaultdb stop'\'''


# Git shortcuts
alias gadd='git add'
alias gbranch='git branch'
alias gcheckout='git checkout'
alias gclone='git clone'
alias gcommit='git commit'
alias gdiff='git diff | mate'
alias glog='git log'
alias gl1='git log -1'
alias gpull='git pull'
alias gpush='git push'
alias gstatus='git status'


# Projects shortcuts
alias ranking='source /Users/typhoon/envs/worldranking/bin/activate && cd /Users/typhoon/projects/worldranking'
alias hatch='source /Users/typhoon/envs/hatch/bin/activate && cd /Users/typhoon/projects/hatch'
alias ssv='source /Users/typhoon/envs/ssv/bin/activate && cd /Users/typhoon/projects/ssv'
alias closet='source /Users/typhoon/envs/closet/bin/activate && cd /Users/typhoon/projects/closet'


# Running realtime sass proccess for monitoring static files
alias runsass='sass --scss --watch core/static/scss:static/css'


# Load RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "/Users/typhoon/.rvm/scripts/rvm" ]] && source "/Users/typhoon/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


