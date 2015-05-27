cd /c/xampp/htdocs

# Git
alias gs="git status"
alias gl="git log --oneline --decorate --graph"
alias gc="git commit"
alias ga="git add"
alias gaa="git add ."
alias gp="git push"
alias pull="git pull"
alias clone="git clone"
alias gco="git checkout"
alias gd="git diff"

# Composer
alias ci="composer install"
alias cu="composer update"
alias cda="composer dump-autoload -o"

# Laravel
alias art="php artisan"

# SSH Agent
 
# set environment variables if user's agent already exists
SSH_AUTH_SOCK=$(ls -l /tmp/ssh-*/agent.* 2> /dev/null | grep $(whoami) | awk '{print $9}')
SSH_AGENT_PID=$(echo $SSH_AUTH_SOCK | cut -d. -f2)
[ -n "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK
[ -n "$SSH_AGENT_PID" ] && export SSH_AGENT_PID

# start agent if necessary
if [ -z $SSH_AGENT_PID ] && [ -z $SSH_TTY ]; then  # if no agent & not in ssh
  eval `ssh-agent -s` > /dev/null
fi

# setup addition of keys when needed
if [ -z "$SSH_TTY" ] ; then                     # if not using ssh
  ssh-add -l > /dev/null                        # check for keys
  if [ $? -ne 0 ] ; then
    alias ssh='ssh-add -l > /dev/null || ssh-add && unalias ssh ; ssh'
    if [ -f "/usr/lib/ssh/x11-ssh-askpass" ] ; then
      SSH_ASKPASS="/usr/lib/ssh/x11-ssh-askpass" ; export SSH_ASKPASS
    fi
  fi
fi
