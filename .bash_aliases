# Put Ruby 1.8 gems on the path
export PATH=$PATH:/var/lib/gems/1.8/bin

# Include .git-completion.sh
if [ -f ~/.git-completion.sh ]; then
  source ~/.git-completion.sh
fi

# Include .git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

# Truncate to last 2 dirs in prompt
export PROMPT_DIRTRIM=2

# Setup current state of git in prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true

# Allow toggling to a short prompt
prompt_on() {
  PS1='\u@\h: \w$(__git_ps1) \$ '
}
prompt_off() {
  PS1='\$ '
}
prompt_on