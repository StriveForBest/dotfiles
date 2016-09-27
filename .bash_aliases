# bash shortcuts
alias atom='. atom'
alias getip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2'
alias skim="(head -5; tail -5) <"
alias su="su -"
alias sudo="sudo -E"
alias whichall="type -all"
alias flushdns="dscacheutil -flushcache"
alias unsetdjangoenv="unset DJANGO_SETTINGS_MODULE"
alias htop="sudo htop"
alias rsync="rsync -avzh --info=progress2"

# list shortcuts
alias ll="ls -ahlF"
alias sortbysize="ls -s | sort -n"


# verbose output
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"


# colors colors colors
alias grep="grep --color=auto"
alias less="less -r"
alias tree="tree -C"


# useful cd shortcuts
alias ..="cd .."
alias ...="cd ../../"
alias envs="cd $HOME/envs"
alias lib="cd $HOME/Google\ Drive/Library"
alias projects="cd $HOME/projects"
alias sublpackages="cd $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"


# removes all *.pyc from current directory and all subdirectories
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias migrations_clean='ls */migrations/*.py | egrep -v __init__.py | xargs rm'

# shortcut to determine your current PYTHONPATH, useful in debugging when switching between virtualenv’s
alias pypath='python -c "import sys; print(sys.path)" | tr "," "\n" | grep -v "egg"'


# django management commands aliases
alias collectstatic='./manage.py collectstatic --noinput'
alias compress='./manage.py compress'
alias shell='./manage.py shell_plus'
alias dbshell='./manage.py dbshell'
alias debshell='./manage.py debugsqlshell'
alias loaddata='./manage.py loaddata'
alias emptymigration='./manage.py makemigrations --empty'
alias makemigrations='./manage.py makemigrations'
alias migrate='./manage.py migrate'
alias rebuildindex='./manage.py rebuild_index --noinput --verbosity=2'
alias run='./manage.py runserver 0.0.0.0:8000'
alias superuser='./manage.py createsuperuser'


# FU stuff
alias setfu="export DJANGO_SETTINGS_MODULE='fu_web.settings.development'"

# CAPC stuff
alias refresh_capc_db='dropdb capc && createdb capc && scp ubuntu@54.210.14.90:/home/web/capc/backups/capc.sql.bz2 backups/. && bzcat backups/capc.sql.bz2 | psql capc'
